// Escreve no LCD usando a interface a 4 bits.
object LCD {
    // Dimensão do display.
    private const val LINES = 2
    private const val COLS = 16

    // Escreve um nibble de comando/dados no LCD em paralelo
    private fun writeNibbleParallel(rs: Boolean, data: Int) {
        if (rs) HAL.setBits(LCD_RS_MASK) else HAL.clearBits(LCD_RS_MASK)
        HAL.writeBits(LCD_DATA_MASK, data)
        Thread.sleep(1)
        HAL.setBits(LCD_E_MASK)
        Thread.sleep(1)
        HAL.clearBits(LCD_E_MASK)
    }
    // Escreve um byte de comando/dados no LCD em série
    private fun writeNibbleSerial(rs: Boolean, data: Int) {
        val rsValue = if (rs) 1 else 0
        SerialEmitter.send(SerialEmitter.Destination.LCD, data shl 1 or rsValue)
        Thread.sleep(10)
    }

    // Escreve um nibble de comando/dados no LCD
    private fun writeNibble(rs: Boolean, data: Int) = writeNibbleSerial(rs, data)


    // Escreve um byte de comando/dados no LCD
    fun writeByte(rs: Boolean, data: Int) {
        writeNibble(rs, data shr 4)
        writeNibble(rs, data)
    }

    // Escreve um comando no LCD
    fun writeCMD(data: Int) = writeByte(false, data)

    // Escreve um dado no LCD
    fun writeDATA(data: Int) = writeByte(true, data)

    // Envia a sequência de iniciação para comunicação a 4 bits.
    fun init() {
        SerialEmitter.init()

        Thread.sleep(16)  // Esperar x ms
        writeNibble(false, 3)
        Thread.sleep(5)   // Esperar x ms
        writeNibble(false, 3)
        Thread.sleep(1)   // Esperar x ms
        writeNibble(false, 3)
        writeNibble(false, 2)

        writeCMD(40)
        writeCMD(8)
        writeCMD(1)
        writeCMD(6)
        writeCMD(15)
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