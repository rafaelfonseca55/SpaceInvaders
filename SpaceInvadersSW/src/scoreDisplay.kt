
object ScoreDisplay {

    enum class HEX(val code: Int) {
        ZERO(Integer.toBinaryString(0).toInt()),
        ONE(Integer.toBinaryString(1).toInt()),
        TWO(Integer.toBinaryString(2).toInt()),
        THREE(Integer.toBinaryString(3).toInt()),
        FOUR(Integer.toBinaryString(4).toInt()),
        FIVE(Integer.toBinaryString(5).toInt()),
    }

    fun init() {
        // Initialize the display to 0
        setScore(0)
    }

    fun setScore(value: Int){
        val valueStr = value.toString()
        //val valToBits = Integer.toBinaryString(value)
        val size = valueStr.length
        for (i in 0..<size) {
            val digit = Integer.toBinaryString(valueStr[i].code)
            SerialEmitter.send(SerialEmitter.Destination.SCORE, (digit.toString() + HEX.entries[i].code.toString()).toInt() , 7)
        }
    }

    // Envia comando para desativar/ativar a visualização do mostrador de pontuação
    // Se value for true, o mostrador é ativado, caso contrário é desativado
    fun off(value: Boolean) {
        if (value) SerialEmitter.send(SerialEmitter.Destination.SCORE, 0x0F, 7) //1111110 = 126  Display ON
        else SerialEmitter.send(SerialEmitter.Destination.SCORE, 0x07, 7) // 1111111 = 127 Display OFF
    }
}


fun main() {
    ScoreDisplay.init()
    ScoreDisplay.off(true)
    ScoreDisplay.setScore(1)
}