object Scores {
    private val scoresList = mutableListOf<Pair<String, Int>>() // Lista de pares (nome, pontuação)
    private const val MAX_SCORES = 20 // Número máximo de pontuações armazenadas
    private const val FILENAME = "pontuacoes.txt" // Nome do arquivo para salvar as pontuações

    // Carrega as pontuações do arquivo ao iniciar
    init {
        loadScores()
    }

    // Adiciona uma nova pontuação à lista, mantendo apenas as 20 melhores
    fun addScore(name: String, score: Int) {
        scoresList.add(Pair(name, score))
        scoresList.sortByDescending { it.second } // Ordena por pontuação decrescente
        if (scoresList.size > MAX_SCORES) {
            scoresList.removeAt(MAX_SCORES) // Remove a pontuação mais baixa se exceder o limite
        }
        saveScores() // Salva as pontuações atualizadas no arquivo
    }

    // Retorna a lista de pontuações formatada para exibição
    fun getScores(): String {
        return scoresList.joinToString("\n") { "${it.first}: ${it.second}" }
    }

    // Carrega as pontuações do arquivo
    private fun loadScores() {
        // (Implementação para leitura do arquivo de texto)
    }

    // Salva as pontuações no arquivo
    private fun saveScores() {
        // (Implementação para escrita no arquivo de texto)
    }
}