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