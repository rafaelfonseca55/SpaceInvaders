import isel.leic.utils.Time

fun main(){
    LCD.init()
    var i=0
    while (true) {
        LCD.write("$i")
        i++
        print(i)
    }
}
object LCD { // Escreve no LCD usando a interface a 8 bits.
    private const val LINES = 2 //Dimensão do Display.
    private const val COLS = 16;// Dimensão do display.
    const val functionSet= 0x030
    // Escreve um byte de comando/dados no LCD em série
    private fun writeByteSerial(rs: Boolean, data: Int) {
        //rs seleciona se o registo é o registo de instruções ou de dados
        var bit:Int = if(rs){
            1
        } else{
            0
        }
        val newData =data.shl(1).or(bit)
        SerialEmitter.send(SerialEmitter.Destination.LCD, newData)
    }
    // Escreve um byte de comando/dados no LCD
    private fun writeByte(rs: Boolean, data: Int) {
        writeByteSerial(rs,data)
    }
    // Escreve um comando no LCD
    private fun writeCMD(data: Int) {
        writeByte(false,data)
    }
    // Escreve um dado no LCD
    private fun writeDATA(data: Int) {
        writeByte(true,data)
    }
    // Envia a sequência de iniciação para comunicação a 8 bits.
    fun init() {
        HAL.init()
        SerialEmitter.init()
        Thread.sleep(16)        //Wait for more than 15 ms
        writeCMD(functionSet)
        Thread.sleep(5)         //Wait for more than 4.1ms
        writeCMD(functionSet)
        Thread.sleep(1)         //Wait for more than 100uS
        writeCMD(functionSet)   //Sets Interface Data Length
        writeCMD(0x038)   //Function Set,    N=1, logo 0x038, pois tem 2 linhas
        writeCMD(0x08)    //Display OFF
        writeCMD(0x01)    //Clear Display
        writeCMD(0x06)    //Entry Mode Set
        writeCMD(0x0F)    //Display ON, Cursor ON, Blinking ON
    }
    // Escreve um caráter na posição corrente.
    fun write(c: Char) {
        writeDATA(c.code)
    }
    // Escreve uma string na posição corrente.
    fun write(text: String) {
        text.forEach { writeDATA(it.code) }
    }
    // Envia comando para posicionar cursor (line1:0..LINES-1, 'column':0..COLS-1)
    fun cursor(line: Int, column: Int) {
        var writeADD=line*0x040+column+128     //0x040(segunda linha), 128(DDRAM_ADDRESS)
        writeCMD(writeADD)
    }
    // Envia comando para limpar o ecrã e posicionar o cursor em (0,0)
    fun clear() {
        writeCMD(0x01)     //Display Clear and set DDRAM_ADDRESS 0.
        Time.sleep(5)
    }

}
