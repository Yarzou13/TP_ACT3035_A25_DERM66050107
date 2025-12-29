# Set le working directory:
setwd("~/Desktop/TP_ACT3035")

# On importe l'ensemble de données:
read.csv("insurance.csv")

# On nomme l'ensemble de données:
assurance <- read.csv("insurance.csv")

# Remplacer la colonne fumeur par oui ou non au lieu de yes or no:

assurance <- assurance %>% 
  mutate(
    fumeur=ifelse(fumeur="yes", "oui", "non")
  )
