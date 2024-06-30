import isel.leic.utils.Time

// Escreve no LCD usando a interface a 8 bits.
object LCD {
    const val functionSet = 0x30

    fun createChar(location: Int, charMap: IntArray) {
        val actualLocation = location and 0x7 // Ensure location is within 0-7 range
        writeCMD(0x40 + (actualLocation * 8)) // Set CGRAM address correctly
        charMap.forEach { writeDATA(it) }      // Write each byte of the character data
    }

    // Escreve um byte de comando/dados no LCD em paralelo
    private fun writeByteParallel(rs: Boolean, data: Int) {
        //if (rs) HAL.setBits(LCD_RS_MASK) else HAL.clearBits(LCD_RS_MASK)
        HAL.clearBits(LCD_E_MASK) // Clear enable
        HAL.writeBits(LCD_DATA_MASK, data.shr(4))
        HAL.setBits(SCLK_MASK) // First clock
        Thread.sleep(1)
        HAL.clearBits(SCLK_MASK) // First clock
        HAL.writeBits(LCD_DATA_MASK, data and 0x0F)
        Thread.sleep(1)
        HAL.setBits(SCLK_MASK) // Second clock
        Thread.sleep(1)
        HAL.clearBits(SCLK_MASK) // Second clock
        Thread.sleep(1)
        HAL.setBits(LCD_E_MASK) // Set enable
        HAL.clearBits(LCD_E_MASK) // Clear enable
    }
    // Escreve um byte de comando/dados no LCD em série
    private fun writeByteSerial(rs: Boolean, data: Int) {
        val rsValue = if (rs) 1 else 0
        SerialEmitter.init()
        SerialEmitter.send(SerialEmitter.Destination.LCD, data.shl(1).or(rsValue), 9)
    }

    // Escreve um byte de comando/dados no LCD
    fun writeByte(rs: Boolean, data: Int) {
        //writeByteParallel(rs, data)
        writeByteSerial(rs, data)
    }

    // Escreve um comando no LCD
    fun writeCMD(data: Int) = writeByte(false, data)

    // Escreve um dado no LCD
    fun writeDATA(data: Int) = writeByte(true, data)

    // Envia a sequência de iniciação para comunicação a 8 bits.
    fun init() {
        println("Initializing LCD...")
        Thread.sleep(16)
        writeCMD(functionSet)
        Thread.sleep(5)
        writeCMD(functionSet)
        Thread.sleep(1)
        writeCMD(functionSet)
        writeCMD(0x038) //Function set 8 bit
        writeCMD(0x08) //Display OFF
        writeCMD(0x01) //Clear display
        writeCMD(0x06) //Entry mode
        writeCMD(0x0C) //Display ON (with cursor 0x0E)
    }

    // Escreve um caráter na posição atual.
    fun write(c: Char) = writeDATA(c.code)

    // Escreve uma string na posição atual.
    fun write(text: String) {
        for (c in text) write(c)
    }

    // Envia comando para posicionar cursor (‘line’:0..LINES-1 , ‘column’:0..COLS-1)
    fun cursor(line: Int, column: Int) = writeCMD((line * 0x40 + column) or 0x80)

    // Envia comando para limpar o ecrã e posicionar o cursor em (0,0)
    fun clear() {
        writeCMD(1)
        Thread.sleep(2)
        cursor(0,0)
    }
}

fun main() {
    HAL.init()
    SerialEmitter.init()
    LCD.init()
    LCD.clear()
    LCD.write("Hello, World!")
}