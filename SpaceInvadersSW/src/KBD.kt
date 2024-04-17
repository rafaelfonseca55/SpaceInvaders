import isel.leic.utils.Time

object KBD { // Ler teclas. Métodos retornam ‘0’..’9’,’#’,’*’ ou NONE.

    private const val NONE = 0
    private val arrayTeclas = arrayListOf('1', '4', '7', '*', '2', '5', '8', '0', '3', '6', '9', '#')

    // Inicia a classe
    fun init() {
        println("Initializing KBD...")
        HAL.init()
        HAL.clearBits(ACK_MASK)
    }

    // Retorna de imediato a tecla premida ou NONE se não há tecla premida.
    fun getKey(): Char {
        if (!HAL.isBit(DVAL_MASK)) {
            return NONE.toChar()
        }
        val key = HAL.readBits(I0_3_MASK)
        while (HAL.isBit(DVAL_MASK)) { HAL.setBits(ACK_MASK) }
        HAL.clearBits(ACK_MASK)
        return arrayTeclas[key-1]
    }

    // Retorna a tecla premida, caso ocorra antes do ‘timeout’ (representado em milissegundos), ou NONE caso contrário.
    fun waitKey(timeout: Long): Char {
        var key = NONE.toChar()
        val endTime = Time.getTimeInMillis() + timeout

        while (endTime >= Time.getTimeInMillis()) {
            key = getKey()
            if (key != NONE.toChar()) { break }
        }
        return key
    }
}

fun main() {
    KBD.init()
    while (true) {
        val key = KBD.waitKey(1500)
        if (key != 0.toChar()) {
            println("Key pressed: $key")
        }
    }
}