import isel.leic.utils.Time

fun main(){
    HAL.init()
    SerialEmitter.init()
    SerialEmitter.send(SerialEmitter.Destination.SPACE_INVADERS, 4)

}

object SerialEmitter {
    enum class Destination { LCD, SPACE_INVADERS }
    //--input--
    const val busyMask: Int = 0x01

    //--output--
    const val SS_MASK: Int = 0x01 //menos significativo
    const val SDX_MASK: Int = 0x02
    const val SCLK_MASK: Int = 0x04

    // Inicia a classe
    fun init() {
        HAL.clrBits(SDX_MASK)
        HAL.setBits(SS_MASK)
        HAL.clrBits(SCLK_MASK)
    }

    // Envia uma trama para o SerialReceiver identificado o destino em addr e os bits de dados em “data“
    fun send(addr: Destination, data: Int) {
        while (isBusy()) {
            Thread.sleep(100)
        }
        Time.sleep(1)
        HAL.clrBits(SS_MASK)
        val dataTx = data.shl(1).or(addr.ordinal)
        var accum = 0  //Detetar erros na trama enviada através do bit de paridade
        for (i in 0..<10) {
            HAL.clrBits(SCLK_MASK)
            if (dataTx.shr(i) and 0x01 == 1) {  //a nossa visao anda para a direita de acordo com o bit que estamos a ver  no momento
                HAL.setBits(SDX_MASK)
                HAL.setBits(SCLK_MASK)
                accum++
            } else {
                HAL.clrBits(SDX_MASK)
                HAL.setBits(SCLK_MASK)
            }
        }
        if (accum % 2 == 0) {
            HAL.clrBits(SCLK_MASK)
            HAL.clrBits(SDX_MASK)
            HAL.setBits(SCLK_MASK)
        } else {
            HAL.clrBits(SCLK_MASK)
            HAL.setBits(SDX_MASK)
            HAL.setBits(SCLK_MASK)
        }
        HAL.setBits(SS_MASK)

    }

    // Retorna true se o canal série estiver ocupado
    fun isBusy(): Boolean {
        if  (HAL.isBit(busyMask)) return true
        return false
    }
}