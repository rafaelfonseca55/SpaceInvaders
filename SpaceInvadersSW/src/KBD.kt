
import isel.leic.utils.Time

fun main(){
    KBD.init()
    while (true) {
        KBD.waitKey(100)
    }
}

object KBD {
    const val NONE : Char = 0.toChar()
    fun init() {
        Receiver.init()
    }

    private fun getKeySerial(): Char {
        var key: Char = NONE
        var dVal = HAL.readBits(0x10)

        val keyboard = arrayOf('1','4','7','*','2','5','8','0', '3','6','9','#') //Index of the keys according the returned value when pressed

        if (dVal != 0) {
            val idx = HAL.readBits(0x0F)
            key = keyboard[idx]
            HAL.writeBits(0x0F, 1)
            println("Key: $key")
        }

        return key
    }

    fun getKey(): Char{
        return getKeySerial()
    }

    fun waitKey(timeout: Long): Char{
        val tinicial= Time.getTimeInMillis()
        var tatual:Long=0
        while (tatual<=timeout){
            val tf= Time.getTimeInMillis()
            val key= getKey()
            if (key!= NONE) {
                return key
            }
            tatual= tf-tinicial
        }
        return NONE
    }
}
