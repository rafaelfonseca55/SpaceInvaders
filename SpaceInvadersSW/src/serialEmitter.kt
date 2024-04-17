import isel.leic.utils.Time

// Envia tramas para os diferentes módulos Serial Receiver.
object SerialEmitter {

    enum class Destination {
        LCD,
        SCORE
    }

    val busyMask = 0x01
    val SS_MASK = 0x01

    // Inicia a classe
    fun init() {
        KBD.init()
        LCD.init()
    }

    fun send(addr: Destination, data: Int, size: Int) {
        /*while (isBusy()) {
            Thread.sleep(100)
        }*/
        Time.sleep(1)
        HAL.clearBits(SS_MASK)

        val dataTx = data.shl(1).or(addr.ordinal)
        var accum = 0

        for (i in 0 until size) { // Loop agora executa 'size' vezes
            HAL.clearBits(SCLK_MASK)

            if ((dataTx.shr(i) and 1) == 1) {
                HAL.setBits(SDX_MASK)
                accum++
            } else {
                HAL.clearBits(SDX_MASK)
            }
            HAL.setBits(SCLK_MASK)
        }

        if (accum % 2 == 0) {
            HAL.clearBits(SCLK_MASK)
            HAL.clearBits(SDX_MASK)
            HAL.setBits(SCLK_MASK)
        } else {
            HAL.clearBits(SCLK_MASK)
            HAL.setBits(SDX_MASK)
            HAL.setBits(SCLK_MASK)
        }

        HAL.setBits(SS_MASK)
    }

    fun isBusy() = HAL.isBit(busyMask)
}

fun main() {
    SerialEmitter.init()
    SerialEmitter.send(SerialEmitter.Destination.LCD, 0, 31)
    Thread.sleep(250)

}