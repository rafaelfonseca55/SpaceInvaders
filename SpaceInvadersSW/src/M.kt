object M{
    val m=0x40

    fun init(){
        HAL.init()
    }

    fun isMaintenance() = HAL.isBit(m)
}