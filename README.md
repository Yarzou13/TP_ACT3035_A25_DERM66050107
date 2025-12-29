TP_ACT3035_A25_DERM66050107
ACT3035A25 - Travail Pratique

D'où proviennent les données :

Cet ensemble de données a été trouvé sur le site Kaggle.com qui contient des jeux de donnés publiques tiré directement du livre "Machine Learning with R" de l'auteur Brett Lantz qui sert d'ensemble de donnés à des fins éducatives. Il porte sur les couts d'assurance médicale aux États-Unis (il s'agit de données fictives et simulées).


Comment vous y avez accédé:

Étant un fichier CSV. J'ai d'abord téléchargé l'ensemble de donnés sous le format CSV. Par la suite, tel que vu en cours j'ai utilisé la procédure read.csv() afin de pouvoir ouvrir l'ensemble de données sur RStudio.


Pourquoi ces données sont pertinentes pour une analyse actuarielle:

Ces données sont pertinentes pour une analyse actuarielle, car ce sont des données publiques contenant des informations individuelles sur le type d'assuré en lien directe avec l'assurance santé. Nous avons également une variable qui représente la charge qui nous permet une analyse par rapport à la sévérité des réclamations, mais aussi des caractéristiques sur chaque individu qui nous permettra potentiellement d'établir des facteurs de risques. 


Nettoyage des valeurs manquantes (justification de la méthode):

Le nettoyage a été réalisé à l'aide de filtres basés sur des règles logiques afin de retirer les valeurs incohérentes ou irréalistes. Les variables catégorielles ont été harmonisées pour assurer une meilleure lisibilité et cohérence. Cette méthode a été choisie car elle permet de préparer les données pour l'analyse sans les transformer excessivement.


Qualité des données, limites et problèmes potentiels:

Les données présentent une bonne cohérence globale après le nettoyage avec des variables biens définies et exploitables pour l'analyse exploratoire. Par contre, les couts montrent une forte asymétrie, ce qui peut poser des problèmes pour certains modèles. De plus, certainess vairables explicatives sont catégorielles ou corrélées entres elles, ce qui pourrait nécessiter des ajustements ou des transformations lors de la modélisation.


Définition du problème actuariel:

La variable réponse retenue pour cette analyse est le cout médical (couts), puisqu'elle représente directement le montant des réclamations associées à chaque assuré. D'un point de vue actuariel, cette variable est centrale, car elle permet d'évaluer le risque financier porté par l'assureur. Les variables explicatives sélectionnées incluent l'age, l'IMC, le nombre d'enfants. le statut de fumeur, le sexe et la région, car elles sont reconnues comme des facteur influencant les dépenses de santé. L'objectif principal de la modélisation est d'analyser et expliquer les couts médicaux afin d'appuyer des décisions de tarification et la sélection des risques, dans une certaine mesure.


Modéle 1 ( Modéle linéaire généralisé "GLM"): 
Justification du choix du modèle: Le GLM a été choisi afin de modéliser les couts, une variable continue centrale en actuariat. 

Résultat d'estimation: Les résultats montrent que l'age et l'IMC ont effect positif et significatif sur les couts: une année d'age supplémentaire augmente les couts d'environ 249$ et une unité d'IMC d'environ 342$. Le nombre d'enfant est également associé à une hausse moyenne d'environ 546$. Le statut de fumeur est un facteur important, les non-fumeurs ont des couts nettement plus faibles que les fumeurs. 

Qualité de l'ajustement: L'ajustement du modèle est jugé satisfaisant, car la deviance résiduelle est beaucoup plus faible que celle du modèle nul, indiquant que les cariables explicatives améliorent fortement le modèle.


Modéle 2 ( Régression logistique): 

Justification du choix du modèle: La régression logistique est utilisée car la variable réponse est binaire (Cout_eleve), ce qui permet de modéliser la probabilité qu'un assuré génère des couts élevés, un enjeu important pour la sélection des risques.

Résultat d'estimation: Les résultats indiquent l'age augmente significativement la probabilité d'avoir des couts élevés, avec un coefficient d'environ 0,16 par année. Certaines régions (nord-ouest, sud-est et sud-ouest) sont associées à une probabilité plus faible de cout élevés.

Qualité de l'ajustement: 





