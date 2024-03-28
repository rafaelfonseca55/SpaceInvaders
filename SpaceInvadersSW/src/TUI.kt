import java.time.LocalDateTime
import java.time.format.DateTimeFormatter

object TUI {
    private val DATE_PATTERN = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm")
    private var date = LocalDateTime.now()
    private var dateFormatted = date.format(DATE_PATTERN)
    private const val CLK: Long = 3000
    fun init() {
        LCD.init()
        KBD.init()
    }
    fun clearLine(line: Int) =writeText("                ", line)
    fun clearScreen() = LCD.clear()
    fun waitForKey(time: Long) = KBD.waitKey(time)
    fun writeCentralized(text: String, line: Int, clearScreen: Boolean = false) {
        LCD.cursor(line, 8 - text.length / 2)
        LCD.write(text)
        if (clearScreen) {
            Thread.sleep(CLK)
            LCD.clear()
        }
    }
    fun writeText(text: String, line: Int, column: Int = 0) {
        LCD.cursor(line, column)
        LCD.write(text)
    }
    fun writeDate() {
        val currentDate = LocalDateTime.now()
        val currentDateFormatted = currentDate.format(DATE_PATTERN)

        if (currentDate != date) {
            date = currentDate
            dateFormatted = currentDateFormatted
            writeCentralized(dateFormatted, 0, false)
        }
    }
    fun writeFailedMessage(message: String) {
        clearLine(1)
        writeCentralized(message, 1)
        Thread.sleep(CLK / 3)
        clearLine(1)
    }
}