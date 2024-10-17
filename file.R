# Função para desenhar uma árvore de Natal no console e salvar o log
desenhar_arvore_natal <- function(altura = 10, arquivo_log = "log_arvore_natal.txt") {

  sink(arquivo_log)
  

  for (i in 1:altura) {
    espacos <- strrep(" ", altura - i)
    asteriscos <- strrep("*", (2 * i) - 1)
    cat(espacos, asteriscos, "\n", sep = "")
  }
  

  for (i in 1:2) {
    espacos_tronco <- strrep(" ", altura - 1)
    cat(espacos_tronco, "***\n")
  }
  
 
  sink()
  
  cat("Árvore de Natal gerada e log salva em", arquivo_log, "\n")
}


desenhar_arvore_natal(altura = 10)
