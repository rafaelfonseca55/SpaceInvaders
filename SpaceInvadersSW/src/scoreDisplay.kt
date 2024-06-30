object ScoreDisplay {

    private const val CMD_UPDATE_DIGIT_0 = 0b000
    private const val CMD_UPDATE_DIGIT_1 = 0b001
    private const val CMD_UPDATE_DIGIT_2 = 0b010
    private const val CMD_UPDATE_DIGIT_3 = 0b011
    private const val CMD_UPDATE_DIGIT_4 = 0b100
    private const val CMD_UPDATE_DIGIT_5 = 0b101
    private const val CMD_UPDATE_DISPLAY = 0b110
    private const val CMD_DISPLAY_ON_OFF = 0b111

    private val registers = IntArray(6)

    fun init() {
        SerialEmitter.init()
    }

    fun setScore(value: Int) {
<<<<<<< Updated upstream
        if (value < 0 || value > 999999) throw IllegalArgumentException("Invalid score value")
=======
>>>>>>> Stashed changes
        val valor = value.toString().padStart(6, '0').reversed()
        for (i in valor.indices) {
            val digit = valor[i].digitToInt()
            val cmd = when (i) {
                0 -> CMD_UPDATE_DIGIT_0
                1 -> CMD_UPDATE_DIGIT_1
                2 -> CMD_UPDATE_DIGIT_2
                3 -> CMD_UPDATE_DIGIT_3
                4 -> CMD_UPDATE_DIGIT_4
                5 -> CMD_UPDATE_DIGIT_5
                else -> continue
            }
            registers[i] = digit
            //val data = decToHex(digit)
            SerialEmitter.send(SerialEmitter.Destination.SCORE, digit.shl(3) or cmd, 7)
            println(digit.shl(4) or cmd)
        }

        SerialEmitter.send(SerialEmitter.Destination.SCORE, CMD_UPDATE_DISPLAY, 7)
    }


    fun off(value: Boolean) {
        val cmd = CMD_DISPLAY_ON_OFF
        val data = if (value) 0b0000000 else 0b0001000
        SerialEmitter.send(SerialEmitter.Destination.SCORE, cmd or data, 7)
    }

    /*
        private fun decToHex(digit: Int): Int {
            return when (digit) {
                0 -> 0x3F // 0
                1 -> 0x06 // 1
                2 -> 0x5B // 2
                3 -> 0x4F // 3
                4 -> 0x66 // 4
                5 -> 0x6D // 5
                6 -> 0x7D // 6
                7 -> 0x07 // 7
                8 -> 0x7F // 8
                9 -> 0x6F // 9
                else -> 0x00 // Blank
            }
        }
        */
}

fun main() {
    ScoreDisplay.init()
    ScoreDisplay.off(true) // Turn on the display
    ScoreDisplay.setScore(141311) // Set the score to display all 1s from D0 to D5
<<<<<<< Updated upstream
}
=======
}
>>>>>>> Stashed changes
