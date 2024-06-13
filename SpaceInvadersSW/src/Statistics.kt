object Statistics {
    private var numGames = 0
    private var numCoins = 0
    private const val FILENAME = "estatisticas.txt" // Nome do arquivo para salvar as estatísticas

    // Carrega as estatísticas do arquivo ao iniciar
    init {
        loadStatistics()
    }

    // Incrementa o número de jogos e salva no arquivo
    fun incrementGames() {
        numGames++
        saveStatistics()
    }

    // Incrementa o número de moedas e salva no arquivo
    fun incrementCoins() {
        numCoins++
        saveStatistics()
    }

    // Retorna as estatísticas formatadas para exibição
    fun getStatistics(): String {
        return "Jogos: $numGames\nMoedas: $numCoins"
    }

    // Carrega as estatísticas do arquivo
    private fun loadStatistics() {
        // (Implementação para leitura do arquivo de texto)
    }

    // Salva as estatísticas no arquivo
    private fun saveStatistics() {
        // (Implementação para escrita no arquivo de texto)
    }
}
