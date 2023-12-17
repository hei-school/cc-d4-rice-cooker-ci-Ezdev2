rice_cooker <- function() {
  tryCatch({
    cat("Ajouter le riz\n")
    cat("Ajouter l'eau (1 tasse de riz pour 2 litres d'eau)\n")
    
    water <- 2 * 1000  # 2 litres
    
    cat("Tourner ON le rice cooker\n")
    
    while (water > 0) {
      Sys.sleep(1)  # Pause d'1 seconde
      water <- water - 100
      cat("Eau restante:", water, "ml\n")
    }
    
    cat("Riz cuit. Rice cooker OFF\n")
    cat("Signal OFF\n")
  }, error = function(e) {
    cat("Erreur:", e$message, "\n")
  })
}

rice_cooker()
