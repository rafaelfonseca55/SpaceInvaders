import isel.leic.UsbPort

// Virtualiza o acesso ao sistema UsbPort
object HAL {

    private var lastWriting = 0

    // Inicia a classe
    fun init() {
        println("Initializing HAL...")
        UsbPort.write(lastWriting)
    }

    // Retorna true se o bit tiver o valor lógico ‘1’
    fun isBit(mask: Int): Boolean {
        val temp = mask and UsbPort.read()
        return mask == temp
    }

    // Retorna os valores dos bits representados por mask presentes no UsbPort
    fun readBits(mask: Int): Int = mask and UsbPort.read()

    // Escreve nos bits representados por mask o valor de value
    fun writeBits(mask: Int, value: Int) {
        val a = mask and value
        val b = mask.inv() and lastWriting
        val c = a or b
        UsbPort.write(c)
        lastWriting = c
    }

    // Coloca os bits representados por mask no valor lógico ‘1’
    fun setBits(mask: Int) {
        writeBits(mask,0xFF)
    }

    // Coloca os bits representados por mask no valor lógico ‘0’
    fun clearBits(mask:Int) {
        writeBits(mask,0x00)
    }
}

fun main() {
    val mask = 0b00001111
    HAL.init()
    HAL.setBits(mask)
    Thread.sleep(2000)
    HAL.clearBits(mask)
    Thread.sleep(2000)
    println(HAL.isBit(mask))
    Thread.sleep(2000)
    HAL.writeBits(mask, 6)
    Thread.sleep(2000)
    // Change the value of the input port bits
    val currentBits = HAL.readBits(mask)
    println(currentBits)
}