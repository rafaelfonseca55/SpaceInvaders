fun main(){
    Receiver.init()
    Receiver.rcv()
}

object Receiver {
    val Txd_MASK:Int=0x02
    var TxClk:Int=0x08

    fun init(){
        HAL.init()
        HAL.clearBits(TxClk)
    }

    fun rcv(): Int{

        var receiveTrama=0x00
        var start:Int
        var stop:Int
        var finalTrama: Int
        var i=0
        var bit: Int
        if (!HAL.isBit(Txd_MASK)) {
            while (i <= 5) {
                HAL.setBits(TxClk)
                if (HAL.isBit(Txd_MASK)) {
                    bit = 1
                } else {
                    bit = 0
                }
                receiveTrama = receiveTrama.or(bit.shl(i))
                i++
                HAL.clearBits(TxClk)
            }

            HAL.setBits(TxClk)
            stop = receiveTrama and 32
            start = receiveTrama and 1

            if (start == 1 && stop == 0) {
                finalTrama = receiveTrama.shr(1)
                HAL.clearBits(TxClk)
                return finalTrama
            }
            HAL.clearBits(TxClk)
        }

        return -1
    }
}