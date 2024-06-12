import isel.leic.utils.Time

// Envia tramas para os diferentes módulos Serial Receiver.
object SerialEmitter {

    enum class Destination {
        LCD,
        SCORE
    }

    //val busyMask = 0x01

    // Inicia a classe
    fun init() {
        HAL.clearBits(SDX_MASK)
        HAL.setBits(nLCDsel_MASK)
        HAL.clearBits(SCLK_MASK)
    }

    fun send(addr: Destination, data: Int, size: Int) {
        Time.sleep(1)
        HAL.clearBits(nLCDsel_MASK)

        val dataTx = data
        var accum = 0

        for (i in 0 until size) { // Loop agora executa 'size' vezes
            HAL.clearBits(SCLK_MASK)

            if ((dataTx.shr(i) and 0x01) == 1) {
                HAL.setBits(SDX_MASK)
                HAL.setBits(SCLK_MASK)
                accum++
            } else {
                HAL.clearBits(SDX_MASK)
                HAL.setBits(SCLK_MASK)
            }

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

        HAL.setBits(nLCDsel_MASK)
    }

    //fun isBusy() = HAL.isBit(busyMask)
}

fun main() {
    HAL.init()
    SerialEmitter.init()
    SerialEmitter.send(SerialEmitter.Destination.LCD, 1, 10)
}