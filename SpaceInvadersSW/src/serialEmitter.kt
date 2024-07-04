import isel.leic.utils.Time

// Envia tramas para os diferentes módulos Serial Receiver.
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
        if (addr == Destination.LCD) HAL.clearBits(nLCDsel_MASK)
        else HAL.clearBits(nSDCsel_MASK)

        var accum = 0
        for (i in 0..<size) { // Loop agora executa 'size' vezes
            if (data.and(1.shl(i)) != 0) {
                HAL.setBits(SDX_MASK)
                accum++
            } else {
                HAL.clearBits(SDX_MASK)
            }
            HAL.setBits(SCLK_MASK)
            HAL.clearBits(SCLK_MASK)
        }

        if (accum % 2 == 0) {
            HAL.clearBits(SDX_MASK)
        } else {
            HAL.setBits(SDX_MASK)
        }

        HAL.setBits(SCLK_MASK)
        HAL.clearBits(SCLK_MASK)
        HAL.setBits(nLCDsel_MASK.or(nSDCsel_MASK))
        Time.sleep(2)
    }
}

fun main() {
    HAL.init()
    SerialEmitter.init()
    SerialEmitter.send(SerialEmitter.Destination.LCD, 0x55, 9)
}