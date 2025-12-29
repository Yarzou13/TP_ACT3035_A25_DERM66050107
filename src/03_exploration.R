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

table(analyse_assurance$sexe)
table(analyse_assurance$fumeur)
table(analyse_assurance$region)
table(analyse_assurance$categorie_imc)


# Maintenant, nous allons visualiser les données á l'aide d'histogrammes, graphiques, boites á moustaches et des graphiques.

# Histogrammes et graphiques de densités:

ggplot(analyse_assurance, aes(x=couts))+
  geom_histogram(aes(y=..density..), bins=30)+
  geom_density()+
  labs(
    title = "Histogramme et densité des couts",
    x="couts",
    y="densité"
  )

# Boites á moustaches:
# Couts selon le statut de fumeur:

ggplot(analyse_assurance, aes(x=fumeur, y=couts))+
  geom_boxplot()+
  labs(
    title = "Couts selon le statut de fumeur",
    x="fumeur",
    y="Couts"
  )

# Couts selon la catégorie d'IMC:

ggplot(analyse_assurance, aes(x=categorie_imc, y=couts))+
  geom_boxplot()+
  labs(
    title = "Couts selon la catégorie d'IMC",
    x="catégorie d'IMC",
    y="Couts"
  )


# Graphiques de corrélation
# Corrélation:
cor(
  analyse_assurance %>% 
    select(age, imc, enfant, couts)
)

# Nuages de points:
# IMC vs Couts 
ggplot(analyse_assurance, aes(x=imc, y=couts))+
  geom_point()





  