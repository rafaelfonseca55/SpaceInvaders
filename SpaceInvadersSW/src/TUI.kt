object TUI{

    //Representa os locais onde pode ser escrito a informação
    enum class Location(val offset: Int) { LEFT(0), CENTER(8), RIGHT(16) }

    //Tempo normal de timeout
    private const val TIMEOUT = 50000L
    //Valor que, traduzido para char, representa a ausência de caracter
    private const val NONE = 0

    fun init(){
        HAL.init()
        KBD.init()
        LCD.init()
        SerialEmitter.init()
        LCD.clear()
    }
    //Lê a tecla do keyboard. Se ocorreu timeout, ele retorna ausência de tecla
    fun read(timeout: Long = TIMEOUT) = KBD.waitKey(timeout)

    fun acceptCoin(): Boolean {
        if (HAL.isBit(COIN_MASK)) {
            HAL.clearBits(COIN_MASK)
            HAL.setBits(COIN_ACCEPT)
            return true
        }
        return false
    }

    //Lê do keyboard uma tecla e escreve-a no LCD
    fun writeFromKeyboard() {
        val key = read()
        if (key == NONE.toChar()) print("ERROR: Timeout reached.")
        else {
            write(key.toString(), 0, Location.LEFT )
        }
    }

    fun writeString(string: String){
        LCD.write(string)
    }

    //Escreve no LCD, numa linha e num local passado como parâmetro
    fun write(text: String, line: Int, location: TUI.Location) {
        when (location) {
            TUI.Location.LEFT -> LCD.cursor(line, location.offset)
            TUI.Location.RIGHT -> LCD.cursor(line, (location.offset - text.length))
            TUI.Location.CENTER -> LCD.cursor(line, (location.offset - (text.length / 2)))
        }
        LCD.write(text)
    }

    fun nextLine(e:String){             //Escreve na proxima linha
        LCD.cursor(1, 0)
        writeString(e)
    }

    fun clear() = LCD.clear()

    fun firstLine(e:String){            //Escreve na primeira linha
        LCD.cursor(0, 0)
        writeString(e)
    }
}

fun main(){
    TUI.init()
    while (true){
        TUI.writeFromKeyboard()
        Thread.sleep(1000)
        LCD.clear()
    }
}