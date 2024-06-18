import kotlin.random.Random

object SpaceInvaders {
    const val MAX_ALIENS_ON_SCREEN = 3 // Maximum aliens on screen at once
    const val ALIEN_MOVE_DELAY = 500L // Alien movement speed

    private val NONE = 0

    var aliensKilled = 0    // Number of aliens killed

    fun init() {
        TUI.init()
    }

    // Apresentação inicial da aplicação no LCD
    fun startUp() {
        TUI.write("Space Invaders", 0, TUI.Location.CENTER)
        Thread.sleep(500)
        val spaceship = intArrayOf(
            0x1E,
            0x18,
            0x1C,
            0x1F,
            0x1C,
            0x18,
            0x1E,
            0x00
        )
        val alien = intArrayOf(0x1F,
            0x1F,
            0x15,
            0x1F,
            0x1F,
            0x11,
            0x11,
            0x00)
        val alien2 = intArrayOf(0x11,
            0x0A,
            0x0E,
            0x15,
            0x1F,
            0x0A,
            0x0A,
            0x00)
        val effects = intArrayOf(0x1F,
            0x0E,
            0x0E,
            0x04,
            0x04,
            0x0E,
            0x0E,
            0x1F)

        LCD.cursor(1, 1)
        LCD.write("Game")
        LCD.createChar(0, spaceship) // Store the alien at location 0
        LCD.createChar(1, alien) // Store the alien at location 1
        LCD.createChar(2, alien2) // Store the alien at location 2
        LCD.createChar(3, effects)
        LCD.cursor(1, 6) // Set cursor to the second line
        LCD.writeDATA(0x00) // Display the spaceship character
        LCD.cursor(1,9)
        LCD.writeDATA(0x01) // Display the alien character
        LCD.cursor(1, 11)
        LCD.writeDATA(0x02) // Display the alien character
        LCD.cursor(1, 13)
        LCD.writeDATA(0x01) // Display the alien character
        LCD.cursor(0,0)
        LCD.writeDATA(0x03)
        LCD.cursor(1,0)
        LCD.writeDATA(0x03)
        LCD.cursor(0,15)
        LCD.writeDATA(0x03)
        LCD.cursor(1,15)
        LCD.writeDATA(0x03)

        Thread.sleep(500)
    }

    fun startGame() {
        var gameOver = false
        var currentAlien = 0
        val spaceshipX = 1
        var spaceshipY = 0
        val alienYPositions = intArrayOf(0, 1)
        val activeAliens = mutableListOf<Pair<Int, Int>>()



        while (!gameOver) {
            // Randomly generate new alien if needed
            if (activeAliens.size < MAX_ALIENS_ON_SCREEN) {
                val alienY = alienYPositions.random()
                val alienX = 15
                activeAliens.add(alienX to alienY)
            }

            //Spaceship
            LCD.cursor(spaceshipY, spaceshipX)
            LCD.writeDATA(0x00)

            val randomNumber = Random.nextInt(1, 10)
            TUI.write(randomNumber.toString(), spaceshipY, TUI.Location.LEFT)   // Number

            // Check for keypad input before moving aliens
            var key = TUI.read()
            if (key == '#') {
                // Erase the spaceship in its old position
                LCD.cursor(spaceshipY, spaceshipX)
                LCD.write(" ")
                LCD.cursor(spaceshipY, 0)
                LCD.write(" ")

                spaceshipY = if (spaceshipY == 0) 1 else 0  // Switch lines

                // Redraw the spaceship in its new position
                LCD.cursor(spaceshipY, spaceshipX)
                LCD.writeDATA(0x00)

                LCD.cursor(spaceshipY, 0)
                LCD.write(randomNumber.toString())

                continue // Skip to the next iteration to redraw everything else
            }


            // Move and display active aliens
            for (i in activeAliens.indices) { // Iterate in reverse to avoid index issues when removing
                var (alienX, alienY) = activeAliens[i]

                // Clear previous alien position before moving
                LCD.cursor(alienY, alienX)
                LCD.write(" ")

                // Move alien left
                alienX--
                activeAliens[i] = alienX to alienY

                // Display alien in new position
                LCD.cursor(alienY, alienX)
                LCD.writeDATA(0x01)

                // Corrected cursor positioning:
                LCD.cursor(alienY, alienX) // Move cursor based on alien's current position
                LCD.writeDATA(0x01)

                Thread.sleep(ALIEN_MOVE_DELAY)

                // Non-blocking check for keypad input (no waiting)
                key = KBD.getKey()
                if (key == '#') {
                    // Erase the spaceship in its old position
                    LCD.cursor(spaceshipY, spaceshipX)
                    LCD.write(" ")

                    spaceshipY = if (spaceshipY == 0) 1 else 0  // Switch lines

                    // Redraw the spaceship in its new position
                    LCD.cursor(spaceshipY, spaceshipX)
                    LCD.writeDATA(0x00)
                } else if (key != NONE.toChar()) {
                    val keyNumber = key.toString().toIntOrNull()
                    if (keyNumber == randomNumber && spaceshipY == activeAliens[i].second) {
                        LCD.cursor(activeAliens[i].second, activeAliens[i].first)
                        LCD.write(" ")
                        aliensKilled++
                        activeAliens.removeAt(i) // Remove killed alien
                        // No more delay here
                        break
                    }
                }

                // Check for collision with spaceship
                if (alienX == spaceshipX) {
                    gameOver = true
                    TUI.clear()
                    TUI.write("Game Over!", 0, TUI.Location.CENTER)
                    Thread.sleep(2000)
                    break
                }
            }
        }


        TUI.clear()
        TUI.write("Game Over!", 0, TUI.Location.CENTER)
        ScoreDisplay.setScore(aliensKilled)
    }
}

fun main() {
    SpaceInvaders.init()
    SpaceInvaders.startUp()
    if (TUI.read() == '*') {
        TUI.clear()
        SpaceInvaders.startGame()
    }
}