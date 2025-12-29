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
    ifelse(region=="southwest", "sud_ouest", region))))
  )

# catégoriser oui et non:
assurance <- assurance %>% 
  mutate(
    region=factor(region,levels= c("nord_est","nord_ouest","sud_est","sud_ouest"))
  )

table(assurance$region)
table(assurance$sexe)

# Traduction de male et female

assurance <- assurance %>% 
  mutate(
    sexe=ifelse(sexe == "female", "femme","homme"),
  )
# catégoriser oui et non:
assurance <- assurance %>% 
  mutate(
    sexe=factor(sexe,levels= c("femme","homme"))
  )

table(assurance$sexe)


# Traitement des valeurs aberrantes:

assurance <- assurance %>% 
  filter(
    age>=0,
    imc>0,
    enfant>=0,
    couts>0,
    fumeur=="oui" | fumeur=="non",
    region=="nord_est" |region=="nord_ouest" |
      region=="sud_est" |region=="sud_ouest",
    sexe=="femme" | sexe=="homme"
  )

# Nouvelle variable (Catégorie IMC):
assurance <- assurance %>% 
  mutate(
    categorie_imc=cut(
      imc,
      breaks=c(0,18,5,25,30,60),
      labels=c("sous_poid", "normal", "surpoids", "obèse"),
      right=F
    )
  )

summary(assurance)





