# On va analyser l'ensemble de nos données à l'aide des statistiques descriptives 
# (Moyenne, médiane, écart-type, min, max)

summary(analyse_assurance)


# Étant donné que la variable réponse sera les couts, nous allons plus détailler:

mean(analyse_assurance$couts)
median(analyse_assurance$couts)
sd(analyse_assurance$couts)
min(analyse_assurance$couts)
max(analyse_assurance$couts)


# Analyse des distributions:

# Couts:

ggplot(analyse_assurance,aes(x=couts))+
  geom_histogram(bins = 30) +
  labs(
    title="Distribution des couts",
    x="Couts",
    y="Nb de personnes"
  )

# Age:

ggplot(analyse_assurance,aes(x=age))+
  geom_histogram(bins = 30) +
  labs(
    title="Distribution de l'age",
    x="Age",
    y="Nb de personnes"
  )


# IMC:

ggplot(analyse_assurance,aes(x=imc))+
  geom_histogram(bins = 30) +
  labs(
    title="Distribution de l'IMC",
    x="IMC",
    y="Nb de personnes"
  )


# Tableaux de fréquences pour les variables catégorielles:

Table(analyse_assurance$sexe)




  