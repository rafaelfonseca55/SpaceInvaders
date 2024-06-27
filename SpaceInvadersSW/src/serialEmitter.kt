import isel.leic.utils.Time

// Envia tramas para os diferentes mÃ³dulos Serial Receiver.
object SerialEmitter {

    enum class Destination {
        LCD,
        SCORE
    }

    // Inicia a classe
    fun init() {
       HAL.init()
        HAL.clearBits(SDX_MASK)
        HAL.setBits(nLCDsel_MASK.or(nSDCsel_MASK))
        HAL.clearBits(SCLK_MASK)
    }

    fun send(addr: Destination, data: Int, size: Int) {
        Time.sleep(1)
        if (addr == Destination.LCD) HAL.clearBits(nLCDsel_MASK)
        else HAL.clearBits(nSDCsel_MASK)
        Thread.sleep(1)

        val dataTx = data
        var accum = 0

        for (i in 0..size-1) { // Loop agora executa 'size' vezes
            Thread.sleep(1)

            if (dataTx.and(1.shl(i)) != 0) {
                HAL.setBits(SDX_MASK)
                Thread.sleep(1)
                accum++
            } else {
                HAL.clearBits(SDX_MASK)
                Thread.sleep(1)
            }
            HAL.setBits(SCLK_MASK)
            Thread.sleep(1)
            HAL.clearBits(SCLK_MASK)
        }

        if (accum % 2 == 0) {
            HAL.clearBits(SDX_MASK)
            Thread.sleep(1)
        } else {
            HAL.setBits(SDX_MASK)
            Thread.sleep(1)
        }

        HAL.setBits(SCLK_MASK)
        Thread.sleep(1)
        HAL.clearBits(SCLK_MASK)
        Thread.sleep(1)
        HAL.setBits(nLCDsel_MASK.or(nSDCsel_MASK))
        Thread.sleep(1)
    }
}

fun main() {
    HAL.init()
    SerialEmitter.init()
    SerialEmitter.send(SerialEmitter.Destination.LCD, 0x55, 9)
}