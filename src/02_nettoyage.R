# Library qu'on aura besoin:

install.packages("dplyr")
library(dplyr)
install.packages("tidyverse")
library(tidyverse)


# Renommer les variables:
assurance <- assurance %>% 
    rename(
      age=age,
      sexe=sex,
      imc=bmi,
      enfant=children,
      fumeur=smoker,
      region=region,
      couts=charges
    )

colnames(assurance)

table(assurance$fumeur)


# remplacer les yes et no par oui/non dans la colonne fumeur:

assurance <- assurance %>% 
  mutate(
    fumeur=ifelse(fumeur == "yes", "oui","non"),
  )
# catégoriser oui et non:
assurance <- assurance %>% 
  mutate(
    fumeur=factor(fumeur,levels= c("oui","non"))
  )

table(assurance$fumeur)

# traduction du nom des régions:
assurance <- assurance %>% 
  mutate(
    region=ifelse(region=="northeast", "nord_est",
    ifelse(region=="northwest", "nord_ouest",
    ifelse(region=="southeast", "sud_est",
    ifelse(region=="southeast", "sud_ouest", region))))
  )

table(assurance$region)


# Traitement des valeurs aberrantes:

assurance <- assurance %>% 
  filter(
    age>=0,
    imc>0,
    enfant>=0,
    c
  )






