
import isel.leic.utils.Time

fun main(){
    KBD.init()
    while (true) {
        val key = KBD.waitKey(100)
        if (key!=0.toChar()){
            println(key)
        }
    }
}

object KBD {
    const val NONE : Char = 0.toChar()
    fun init() {
        Receiver.init()
    }

    private fun getKeySerial(): Char {
        var key: Char = NONE
        var dval = HAL.readBits(0x10)

        if (dval != 0) {
            key = HAL.readBits(0x0F).toChar()
        }
        //Fazer resto do código
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
