object CoinAcceptor {
    // masks TBD
    var coin_bit = 0x01
    var accept = 0x02

    // Initialize the CoinAcceptor
    fun init() {
        HAL.init()
    }

    // Check if a coin has been inserted
    fun hasCoin(): Boolean {
        return HAL.isBit(coin_bit)
    }

    // Get the value of the inserted coin (always 2 credits for €1)
    fun getCoinValue(): Int {
        return if (hasCoin()) 2 else 0 // Return 2 credits if a coin is present, otherwise 0
    }

    // Accept the inserted coin
    fun acceptCoin() {
        HAL.setBits(accept)
        while (hasCoin()) {} // Wait for the coin to be physically removed
        HAL.clearBits(accept)
    }
}
