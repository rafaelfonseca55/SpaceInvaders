import isel.leic.UsbPort


fun main() {
    HAL.init()
    while (true) {
        HAL.writeBits(0x0F, 0x01)
    }
}

object  HAL{
    private var lastOutput =0
    fun init(){
        UsbPort.write(lastOutput)
    }

    fun isBit(mask: Int): Boolean{
        val value = UsbPort.read()
        return  (mask and value ==mask)
    }

    fun readBits(mask: Int): Int {
        val value=UsbPort.read()
        return mask and value
    }

    fun writeBits(mask: Int, value: Int) {
        lastOutput = mask.inv() and lastOutput or (value and mask)
        UsbPort.write(lastOutput)
    }

    fun setBits(mask: Int) {
        lastOutput = mask or lastOutput
        UsbPort.write(lastOutput)
    }

    fun clrBits(mask: Int) {
        lastOutput =  mask.inv() and lastOutput
        UsbPort.write(lastOutput)
    }
}