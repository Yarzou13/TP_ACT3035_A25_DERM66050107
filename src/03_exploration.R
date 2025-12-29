# On va analyser l'ensemble de nos données à l'aide des statistiques descriptives 
# (Moyenne, médiane, écart-type, min, max)

summary(analyse_assurance)


# Étant donné que la variable réponse sera le cout, nous allons plus détailler:

mean(analyse_assurance$couts)
median(analyse_assurance$couts)
sd(analyse_assurance$couts)
min(analyse_assurance$couts)
max(analyse_assurance$couts)