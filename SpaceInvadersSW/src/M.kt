import kotlin.system.exitProcess

object M {
    fun turnOff() {

        TUI.clear()
        TUI.write("Shutting down...", 0, TUI.Location.CENTER)
        for(i in 0..15){
            LCD.cursor(1, i)
            LCD.write('.')
            Thread.sleep(100)
        }
        Statistics.saveScoreToFileOrdered()
        Statistics.saveGameStatistics()
        TUI.clear()

        exitProcess(0)
    }
}