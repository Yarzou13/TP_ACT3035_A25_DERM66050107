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

