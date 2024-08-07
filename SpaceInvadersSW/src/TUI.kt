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

    fun acceptCoin():Boolean{
        if (HAL.isBit(COIN_MASK)){
            Thread.sleep(10)
            HAL.setBits(COIN_ACCEPT)
            while(HAL.isBit(COIN_MASK)){
                Thread.sleep(10)
            }
            HAL.clearBits(COIN_ACCEPT)
            return true
        }
        return false
    }

    fun clearLine(line: Int) {
        if (line == 0 || line == 1)
            for (location in Location.entries){
                write(" ".repeat(16), line, location)
            }
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
    fun write(text: String, line: Int, location: Location) {
        when (location) {
            Location.LEFT -> LCD.cursor(line, location.offset)
            Location.RIGHT -> LCD.cursor(line, (location.offset - text.length))
            Location.CENTER -> LCD.cursor(line, (location.offset - (text.length / 2)))
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

    fun findLetterPos(a: CharArray, c: Char): Int {
        var l = 0
        var r = a.size - 1
        while (l<=r) {
            val mid = (l+r)/2
            if(a[mid]==c) return mid
            else {
                if(a[mid]<c) l = mid+1
                else r = mid-1
            }
        }
        return 0
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