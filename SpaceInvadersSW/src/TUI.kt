object TUI{

    fun init(){
        KBD.init()
        LCD.init()
        LCD.clear()
    }
    fun keyToLCD(){
        val key= KBD.waitKey(1500)
        if (key!= 0.toChar()){
            println("Key detected: $key")  // Print the detected key
            LCD.write(key)
        }
    }
    fun writeString(string: String){
        LCD.write(string)
    }

    fun get2Key(maxValue: Int):String{
        var accum= emptyArray<Char>()
        var i=maxValue
        while (i!=0) {
            val key = KBD.waitKey(1500)
            if (key!= 0.toChar()) {
                accum += key
            }
            i--
        }
        return accum.joinToString("")
    }

    fun nextLine(e:String){             //Escreve na proxima linha
        LCD.cursor(1, 0)
        writeString(e)
    }
}

fun main(){
    TUI.init()
    while (true){
        TUI.keyToLCD()
        Thread.sleep(1000)
        LCD.clear()
    }
}