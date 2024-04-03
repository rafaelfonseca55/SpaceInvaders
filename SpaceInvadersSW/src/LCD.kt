// Escreve no LCD usando a interface a 8 bits.
object LCD {
    // Dimensão do display.
    private const val LINES = 2
    private const val COLS = 16
    private const val LCD_DX = LCD_E_MASK or LCD_RS_MASK or LCD_DATA_MASK
    const val functionSet = 0x30

    // Escreve um byte de comando/dados no LCD em paralelo
    private fun writeByteParallel(rs: Boolean, data: Int) {
        if (rs) HAL.setBits(LCD_RS_MASK) else HAL.clearBits(LCD_RS_MASK)
        HAL.writeBits(LCD_DATA_MASK, data)
        Thread.sleep(1)
    }
    // Escreve um byte de comando/dados no LCD em série
    private fun writeByteSerial(rs: Boolean, data: Int) {
        val rsValue = if (rs) 1 else 0
        SerialEmitter.send(SerialEmitter.Destination.LCD, data shl 1 or rsValue)
        Thread.sleep(10)
    }

    // Escreve um byte de comando/dados no LCD
    fun writeByte(rs: Boolean, data: Int) {
        writeByteParallel(rs, data)
    }

    // Escreve um comando no LCD
    fun writeCMD(data: Int) = writeByte(false, data)

    // Escreve um dado no LCD
    fun writeDATA(data: Int) = writeByte(true, data)

    // Envia a sequência de iniciação para comunicação a 8 bits.
    fun init() {
        HAL.init()
        //SerialEmitter.init()
        Thread.sleep(16)
        writeCMD(functionSet)
        HAL.setBits(LCD_E_MASK) // Display ON
        clear()
    }

    // Escreve um caráter na posição corrente.
    fun write(c: Char) = writeDATA(c.code)

    // Escreve uma string na posição corrente.
    fun write(text: String) {
        for (c in text) write(c)
    }

    // Envia comando para posicionar cursor (‘line’:0..LINES-1 , ‘column’:0..COLS-1)
    fun cursor(line: Int, column: Int) = writeCMD((line * 0x40 + column) or 0x80)

    // Envia comando para limpar o ecrã e posicionar o cursor em (0,0)
    fun clear() {
        writeCMD(1)
        cursor(0,0)
    }
}

fun main() {
    LCD.init()
    println(" LCD INITIALIZED ")
    var count = 0
    while (true) {
        LCD.write("LCD COUNT: $count")
        Thread.sleep(1000)
        LCD.clear()
        count++
        if (count == 10) {
            LCD.clear()
            LCD.cursor(1, 0)
            LCD.write("WE REACHED 10!")
            LCD.clear()
            count = 0
        }
    }
}