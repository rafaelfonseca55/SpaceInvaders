import java.io.File
import kotlin.random.Random

object SpaceInvaders {
    const val MAX_ALIENS_ON_SCREEN = 3
    const val ALIEN_MOVE_DELAY = 1200L
    private const val NONE = 0

    var aliensKilled = 0
    var coins = 0
    var totalCoins = 0
    var gameCount = 0
    var playerName = ""

    fun init() {
        TUI.init()
        ScoreDisplay.init()
        //clearStatisticsFile()
    }

    fun showInitialScreen() {
        TUI.write("Space Invaders", 0, TUI.Location.CENTER)
        Thread.sleep(500)
        val spaceship = intArrayOf(
            0x1E, 0x18, 0x1C, 0x1F, 0x1C, 0x18, 0x1E, 0x00
        )
        val effects = intArrayOf(
            0x1F,
            0x1F,
            0x15,
            0x1F,
            0x1F,
            0x11,
            0x11,
            0x00
        )

        LCD.cursor(1, 1)
        LCD.write("Game")
        LCD.createChar(0, spaceship)
        LCD.createChar(3, effects)
        LCD.cursor(1, 6)
        LCD.writeDATA(0x00)
        LCD.cursor(1, 9)
        LCD.writeDATA(0x03)
        LCD.cursor(1, 11)
        LCD.writeDATA(0x03)
        updateCoinsDisplay()
        Thread.sleep(5)
    }

    fun showInitialScreenM() {
        TUI.write("Maintenance", 0, TUI.Location.CENTER)
        TUI.write("5-Off | #-Stats", 1, TUI.Location.CENTER)
        /*val spaceship = intArrayOf(
            0x1E, 0x18, 0x1C, 0x1F, 0x1C, 0x18, 0x1E, 0x00
        )
        val effects = intArrayOf(
            0x1F,
            0x1F,
            0x15,
            0x1F,
            0x1F,
            0x11,
            0x11,
            0x00
        )

        LCD.cursor(1, 1)
        LCD.write("Game")
        LCD.createChar(0, spaceship)
        LCD.createChar(3, effects)
        LCD.cursor(1, 6)
        LCD.writeDATA(0x00)
        LCD.cursor(1, 9)
        LCD.writeDATA(0x03)
        LCD.cursor(1, 11)
        LCD.writeDATA(0x03)
        LCD.cursor(1,14)
        LCD.write("M")
        Thread.sleep(5)*/
    }

    fun resetScores() {
        aliensKilled = 0
        ScoreDisplay.setScore(aliensKilled)
    }

    fun startUp() {
        aliensKilled = 0
        ScoreDisplay.setScore(aliensKilled)
        TUI.clear()
        showInitialScreen()
        var startTime: Long
        // Main menu loop
            startTime = System.currentTimeMillis()
            while (true) {
                showInitialScreen()
                val key = KBD.getKey()
                if (TUI.acceptCoin()) {
                    println("Coin Accepted")
                    coins += 2
                    totalCoins++
                    updateCoinsDisplay()
                }
                if ((System.currentTimeMillis() - startTime).toInt() >= 10000 && !HAL.isBit(M_MASK)) {
                    Statistics.showStatistics("Highscores", "SIG_scores.txt")
                    startTime = System.currentTimeMillis()
                }
                if (key == '#') {
                    if (coins > 0) {
                        TUI.clear()
                        Thread.sleep(500)
                        startGame()
                        TUI.clear()
                        resetScores()
                        showInitialScreen()
                    }
                }
                if (HAL.isBit(M_MASK)) {
                    TUI.clear()
                    showInitialScreenM()
                }
                while (HAL.isBit(M_MASK)) {
                        var key = KBD.getKey()

                        if (key == '1') {
                            TUI.clear()
                            Thread.sleep(500)
                            startGame()
                            TUI.clear()
                            showInitialScreenM()
                        }

                        if (key == '5') {
                            TUI.clear()
                            TUI.write("Are you sure?", 0, TUI.Location.CENTER)
                            TUI.write("5-Yes  Other-no", 1, TUI.Location.CENTER)
                            key = KBD.waitKey(10000)
                                if (key == '5') {
                                    M.turnOff()
                                    return
                                } else {
                                    TUI.clear()
                                    showInitialScreenM()
                                }
                        }

                        if (key == '#') {
                            Statistics.showGameStatistics()
                            key = KBD.waitKey(20000)
                            if (key == '0') {
                                TUI.clear()
                                showInitialScreenM()
                            } else if (key == '*') { // Reset game statistics
                                Statistics.resetStatisticsFile()
                                totalCoins = 0
                                gameCount = 0
                                TUI.clear()
                                TUI.write("Cleared", 0, TUI.Location.CENTER)
                                TUI.write("Statistics", 1, TUI.Location.CENTER)
                                Thread.sleep(3000)
                                TUI.clear()
                                showInitialScreenM()
                            }
                        }
                }
            }

    }

    fun startGame() {
        if (!HAL.isBit(M_MASK)) {
            coins--
            gameCount++
        }
        aliensKilled = 0 // Reset score for new game

        var gameOver = false
        val spaceshipX = 1
        var spaceshipY = 0
        val alienYPositions = intArrayOf(0, 1)
        val activeAliens = mutableListOf<Triple<Int, Int, Int>>()
        var closestAlienNumber = NONE
        var closestAlienX = Int.MAX_VALUE

        var alienNumberToKill: Int? = null

        // Game loop
        while (!gameOver) {
            if (activeAliens.size < MAX_ALIENS_ON_SCREEN) {
                val alienY = alienYPositions.random()
                val alienX = 15
                val alienNumber = Random.nextInt(0, 10)
                activeAliens.add(Triple(alienX, alienY, alienNumber))
            }

            LCD.cursor(spaceshipY, spaceshipX)
            LCD.writeDATA(0x00)

            closestAlienNumber = NONE
            closestAlienX = Int.MAX_VALUE
            var foundClosestAlien = false

            val aliensToRemove = mutableListOf<Triple<Int, Int, Int>>()

            for (i in activeAliens.indices) {
                var (alienX, alienY, alienNumber) = activeAliens[i]

                LCD.cursor(alienY, alienX)
                LCD.write(" ")

                alienX--
                activeAliens[i] = Triple(alienX, alienY, alienNumber)

                LCD.cursor(alienY, alienX)
                LCD.write(alienNumber.toString())

                if (alienX < closestAlienX && alienY == spaceshipY) {
                    closestAlienX = alienX
                    closestAlienNumber = alienNumber
                    foundClosestAlien = true
                }

                if (alienX == spaceshipX) {
                    gameOver = true
                    TUI.clear()
                    TUI.write("Game Over!", 0, TUI.Location.CENTER)
                    Thread.sleep(700)
                    TUI.clear()
                    println("Game Over reached") // Log for debugging
                    if (HAL.isBit(M_MASK)) return
                    if (Statistics.isHighscore(aliensKilled)) {
                        println("Entered player name") // Log for debugging
                        Statistics.enterPlayerName()
                        Statistics.saveScoreToFileOrdered()
                    }
                    Statistics.saveGameStatistics()
                    TUI.clear()
                    break

                }

                if (alienX < 0) {
                    aliensToRemove.add(activeAliens[i])
                }
            }

            activeAliens.removeAll(aliensToRemove)

            val key = KBD.getKey()
            if (key == '*') {
                LCD.cursor(spaceshipY, spaceshipX)
                LCD.write(" ")
                LCD.cursor(spaceshipY, spaceshipX - 1)
                LCD.write(" ")

                spaceshipY = if (spaceshipY == 0) 1 else 0

                LCD.cursor(spaceshipY, spaceshipX)
                LCD.writeDATA(0x00)
            } else if (key != NONE.toChar()) {
                if (key.isDigit()) {
                    TUI.write(key.toString(), spaceshipY, TUI.Location.LEFT)
                    alienNumberToKill = key.toString().toInt()
                } else if (key == '#' && alienNumberToKill != null) {
                    val iterator = activeAliens.iterator()
                    while (iterator.hasNext()) {
                        val alien = iterator.next()
                        if (alien.third == alienNumberToKill && alien.second == spaceshipY && closestAlienX == alien.first) { //Kill
                            LCD.cursor(alien.second, alien.first)
                            LCD.write(" ")
                            aliensKilled++
                            ScoreDisplay.setScore(aliensKilled)
                            iterator.remove()
                            break // Exit after kill
                        }
                    }
                    alienNumberToKill = null //Reset alienNumberToKill
                }
            }

            Thread.sleep(ALIEN_MOVE_DELAY)
        }
    }

    private fun updateCoinsDisplay() {
        LCD.cursor(1, 12)
        LCD.write(" ")
        LCD.write("$$coins")
    }


}

fun main() {
    SpaceInvaders.init()
    SpaceInvaders.startUp()
}