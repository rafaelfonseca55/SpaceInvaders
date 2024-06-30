import SpaceInvaders.aliensKilled
import SpaceInvaders.playerName
import SpaceInvaders.showInitialScreen
import java.io.File

object Statistics {

    private const val TOP20_FILE = "SIG_scores.txt"
    private const val STATISTICS_FILE = "Statistics.txt"

    fun showStatistics(name: String, path: String) {
        TUI.clear()
        LCD.cursor(0, 1)
        LCD.writeDATA(0x03)
        LCD.cursor(0, 14)
        LCD.writeDATA(0x03)
        TUI.write(name, 0, TUI.Location.CENTER)
        val statistics = File(path).readLines()
        val topScores = statistics
            .map { it.split(";") }
            .sortedByDescending { it[0].toInt() }
            .take(20)
            .mapIndexed { index, it -> "${index + 1}.${it[1]}:${it[0]}"}

        for (i in topScores.indices) {
            if (KBD.getKey() == '*') break
            TUI.clearLine(1)
            TUI.write(topScores[i], 1, TUI.Location.CENTER)
            Thread.sleep(2000)
        }

        TUI.clear()
        showInitialScreen()
    }

    fun enterPlayerName() {
        playerName = ""
        val characters = arrayOf(' ', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z')
        var position = 0
        var currentCharacterIndex = 1 // Start at 'A'

        TUI.write("Enter your name:", 0, TUI.Location.LEFT)
        LCD.cursor(1, 0)

        while (true) {
            val key = KBD.getKey()

            when (key) {
                '2' -> { // Next letter
                    currentCharacterIndex = (currentCharacterIndex + 1) % characters.size
                    if (currentCharacterIndex == 0) {
                        currentCharacterIndex = 1  // Jump to 'A' if at ' '
                    }
                }
                '8' -> { // Previous letter
                    currentCharacterIndex = (currentCharacterIndex - 1 + characters.size) % characters.size
                    if (currentCharacterIndex == 0) {
                        currentCharacterIndex = characters.size - 1  // Jump to 'Z' if at ' '
                    }
                }
                '4' -> { // Previous position
                    position = (position - 1).coerceAtLeast(0)
                    currentCharacterIndex = characters.indexOf(playerName.getOrNull(position) ?: 'A').coerceAtLeast(0)
                }
                '6' -> { // Next position
                    position = (position + 1).coerceAtMost(15)
                    if (position < playerName.length) {
                        currentCharacterIndex = characters.indexOf(playerName.getOrNull(position) ?: 'A').coerceAtLeast(0)
                    } else {
                        currentCharacterIndex = 0
                    }
                }
                '*' -> { // Delete
                    if (playerName.isNotEmpty() && position < playerName.length) {
                        playerName = playerName.removeRange(position, position + 1)
                        currentCharacterIndex = characters.indexOf(playerName.getOrNull(position) ?: ' ').coerceAtLeast(0)
                    }
                }
                '5' -> { // Submit
                    if (playerName.isNotBlank()) {
                        playerName = playerName.trim()
                        break
                    }
                }
            }

            val currentCharacter = characters[currentCharacterIndex]
            updatePlayerName(position, currentCharacter)

            TUI.write(playerName, 1, TUI.Location.LEFT)
            LCD.cursor(1, position)
            Thread.sleep(200)
        }

        TUI.clear()
        TUI.write("Name entered:", 0, TUI.Location.CENTER)
        TUI.write(playerName, 1, TUI.Location.CENTER)
        Thread.sleep(500)
    }

    private fun updatePlayerName(position: Int, char: Char) {
        if (position < playerName.length) {
            playerName = playerName.substring(0, position) + char + playerName.substring(position + 1)
        } else {
            playerName += char
        }
        TUI.write(playerName, 1, TUI.Location.LEFT) // Update TUI immediately
        println("Updated player name: $playerName") // Log for debugging
    }

     fun isHighscore(score: Int): Boolean {
        val statistics = File(TOP20_FILE).readLines()
        if (statistics.isEmpty()) {
            return true
        }
        val topScores = statistics
            .map { it.split(";") }
            .sortedByDescending { it[0].toInt() }
            .take(20)
            .map { it[0].toInt() }

        return score > topScores.last()
    }

     fun saveScoreToFileOrdered() {
        val statistics = File(TOP20_FILE).readLines()
            .filter { it.isNotBlank() && it.contains(";") }
        val newScore = "$aliensKilled;$playerName"

        val allScores = statistics.toMutableList()
        allScores.add(newScore)

        val topScores = allScores
            .mapNotNull {
                val parts = it.split(";")
                if (parts.size == 2) parts[0].toInt() to parts[1] else null
            }
            .sortedByDescending { it.first }
            .take(20)
            .mapIndexed { _, (score, name) -> "$score;$name" }

        clearStatisticsFile(TOP20_FILE)
        File(TOP20_FILE).writeText(topScores.joinToString("\n"))
    }

     fun clearStatisticsFile(path: String) {
        File(path).writeText("")
    }

}