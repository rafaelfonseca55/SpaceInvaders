import com.sun.jna.IntegerType
import isel.leic.utils.Time
import jdk.incubator.vector.VectorOperators.Binary

// Envia tramas para os diferentes módulos Serial Receiver.
object SerialEmitter {

    enum class Destination {
        LCD,
        SCORE
    }

    // Inicia a classe
    fun init() {
        HAL.clearBits(SDX_MASK)
        HAL.setBits(nLCDsel_MASK)
        HAL.clearBits(SCLK_MASK)
    }

    fun send(addr: Destination, data: Int, size: Int) {
        Time.sleep(1)
        if (addr == Destination.LCD) HAL.clearBits(nLCDsel_MASK)
        else HAL.setBits(nLCDsel_MASK)
        Thread.sleep(1)

        val dataTx = data.shl(1)
        var accum = 0

        for (i in size downTo 0) { // Loop agora executa 'size' vezes
            HAL.clearBits(SCLK_MASK)
            Thread.sleep(1)

            if ((dataTx.shr(i) and 0x01) == 1) {
                HAL.setBits(SDX_MASK)
                Thread.sleep(1)
                accum++
            } else {
                HAL.clearBits(SDX_MASK)
                Thread.sleep(1)
            }
            HAL.setBits(SCLK_MASK)
            Thread.sleep(1)
        }

        if (accum % 2 == 0) {
            HAL.clearBits(SCLK_MASK)
            Thread.sleep(1)
            HAL.clearBits(SDX_MASK)
            Thread.sleep(1)
            HAL.setBits(SCLK_MASK)
            Thread.sleep(1)
        } else {
            HAL.clearBits(SCLK_MASK)
            Thread.sleep(1)
            HAL.setBits(SDX_MASK)
            Thread.sleep(1)
            HAL.setBits(SCLK_MASK)
            Thread.sleep(1)
        }

        HAL.setBits(nLCDsel_MASK)
        Thread.sleep(1)
    }
}

fun main() {
    HAL.init()
    SerialEmitter.init()
    SerialEmitter.send(SerialEmitter.Destination.LCD, 0x55, 9)
}