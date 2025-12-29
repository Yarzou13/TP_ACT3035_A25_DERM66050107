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





  