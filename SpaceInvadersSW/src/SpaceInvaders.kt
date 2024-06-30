import java.io.File
import kotlin.random.Random

object SpaceInvaders {
    const val MAX_ALIENS_ON_SCREEN = 3
    const val ALIEN_MOVE_DELAY = 800L
    private const val NONE = 0

    var aliensKilled = 0
    var coins = 0
    var totalCoins = 0
    var gameCount = 0
    var playerName = ""

    fun init() {
        TUI.init()
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

    fun startUp() {
        aliensKilled = 0
        ScoreDisplay.setScore(aliensKilled)
        showInitialScreen()

        // Main menu loop
        while (true) {
            var startTime = System.currentTimeMillis()
            while (true) {
                val key = KBD.getKey()
                if (TUI.acceptCoin()) {
                    coins++
                    totalCoins++
                    updateCoinsDisplay()
                }
                if ((System.currentTimeMillis() - startTime).toInt() == 10000) {
                    Statistics.showStatistics("SIG_scores", "SIG_scores.txt")
                    startTime = System.currentTimeMillis()
                }
                if (key == '#') {
                    if (coins > 0) {
                        TUI.clear()
                        Thread.sleep(500)
                        startGame()
                        TUI.clear()
                        startUp()
                    }
                }
                if (HAL.isBit(M_MASK)) {
                    var startTime1 = System.currentTimeMillis()
                    while (true) {
                        val key = KBD.getKey()

                        if ((System.currentTimeMillis() - startTime1).toInt() == 5000) {
                            TUI.clear()
                            Thread.sleep(500)
                            startGame()
                            TUI.clear()
                            startUp()
                            startTime1 = System.currentTimeMillis()
                        }

                        if (key == '#') { // Reset statistics
                            Thread.sleep(1000) // ??
                            if (key == '*') {
                                Statistics.clearStatisticsFile("Statistics.txt")
                                totalCoins = 0
                                gameCount = 0
                                TUI.clear()
                                TUI.write("Statistics cleared", 0, TUI.Location.CENTER)
                                Thread.sleep(1000)
                                TUI.clear()
                            } else
                                Statistics.showStatistics("Statistics", "Statistics.txt")
                        }
                    }
                }
            }
        }
    }

    fun startGame() {
        coins--
        gameCount++
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
                    if (Statistics.isHighscore(aliensKilled)) {
                        println("Entered player name") // Log for debugging
                        Statistics.enterPlayerName()
                        Statistics.saveScoreToFileOrdered()
                        //Statistics.
                    }
                    TUI.clear()
                    break

                }

                if (alienX < 0) {
                    aliensToRemove.add(activeAliens[i])
                }
            }

            activeAliens.removeAll(aliensToRemove)

            if (foundClosestAlien) {
                TUI.write(closestAlienNumber.toString(), spaceshipY, TUI.Location.LEFT)
            } else {
                TUI.write(" ", spaceshipY, TUI.Location.LEFT)
            }

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
                    alienNumberToKill = key.toString().toInt()
                } else if (key == '#' && alienNumberToKill != null) {
                    val alienToKill = activeAliens.find { it.third == alienNumberToKill && it.second == spaceshipY }
                    if (alienToKill != null) {
                        LCD.cursor(alienToKill.second, alienToKill.first)
                        LCD.write(" ")
                        aliensKilled++
                        activeAliens.remove(alienToKill)

                        if (alienToKill.first == closestAlienX && alienToKill.second == spaceshipY) {
                            closestAlienX = Int.MAX_VALUE
                            closestAlienNumber = NONE
                            for (alien in activeAliens) {
                                if (alien.first < closestAlienX && alien.second == spaceshipY) {
                                    closestAlienX = alien.first
                                    closestAlienNumber = alien.third
                                }
                            }
                            TUI.write(closestAlienNumber.toString(), spaceshipY, TUI.Location.LEFT)
                        }

                        ScoreDisplay.setScore(aliensKilled)
                    }
                    alienNumberToKill = null
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