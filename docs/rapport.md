Pourquoi ces données sont pertinentes pour une analyse actuarielle:

Ces données sont pertinentes pour une analyse actuarielle, car ce sont des données publiques contenant des informations individuelles sur le type d'assuré en lien directe avec l'assurance santé. Nous avons également une variable qui représente la charge qui nous permet une analyse par rapport à la sévérité des réclamations, mais aussi des caractéristiques sur chaque individu qui nous permettra potentiellement d'établir des facteurs de risques. 


Nettoyage des valeurs manquantes (justification de la méthode):

Le nettoyage a été réalisé à l'aide de filtres basés sur des règles logiques afin de retirer les valeurs incohérentes ou irréalistes. Les variables catégorielles ont été harmonisées pour assurer une meilleure lisibilité et cohérence. Cette méthode a été choisie car elle permet de préparer les données pour l'analyse sans les transformer excessivement.


Qualité des données, limites et problèmes potentiels: Les données présentent une bonne cohérence globale après le nettoyage avec des variables biens définies et exploitables pour l'analyse exploratoire. Par contre, les couts montrent une forte asymétrie, ce qui peut poser des problèmes pour certains modèles. De plus, certainess vairables explicatives sont catégorielles ou corrélées entres elles, ce qui pourrait nécessiter des ajustements ou des transformations lors de la modélisation.


Définition du problème actuariel:La variable réponse retenue pour cette analyse est le cout médical (couts), puisqu'elle représente directement le montant des réclamations associées à chaque assuré. D'un point de vue actuariel, cette variable est centrale, car elle permet d'évaluer le risque financier porté par l'assureur. Les variables explicatives sélectionnées incluent l'age, l'IMC, le nombre d'enfants. le statut de fumeur, le sexe et la région, car elles sont reconnues comme des facteur influencant les dépenses de santé. L'objectif principal de la modélisation est d'analyser et expliquer les couts médicaux afin d'appuyer des décisions de tarification et la sélection des risques, dans une certaine mesure.


Interprétation: Les deux modèles répondent à des objectifs différents et sont complémentaires. Le GLM est plus approprié pour analyser et expliquer le niveau des couts, car il permet d'estimer directement l'effect des caractéristiques des assurés sur les montant de réclamation, ce qui est particulièrement utile pour la tarification. La régression logistique, quant à elle, est mieux adaptée pour identifier les assurés à risque élevé, en modélisant la probabilité d'avoir des couts important. D'un point de vue actuariel, le GLM est le modèle le plus approprié lorsqu<on s'intéresse à l'évaluation du cout moyen attendu, tandis que la logistique permet une segmentation des tisques. Les résultats montrenet que des facteurs comme l'age et l'IMC et surtout le statut fumeur jouenet un role important , ce qui est peux avoir des implication pratiques en matière de tarification différencié=m de gestion du portefeuill et de stratégies de prévention cibleées.


Discussion des limites: Cette analyse présente certaines limites, notammenet le fait qu'elle repose sur des observées à un seul moment dans le temps, ce qui ne permet pas de capter l'évolution des couts. De plus, les données peuvent contenir des biais potentiels, par exemple liés à des variables non observées comme l'état de santé réel ou les habitudes médicales des assurés, ce qui peut influencer les résultats. Pour conclure, des améliorations seraient possibles en intégrant davatanges de variables explicatives pertinentes, en testant des interaction entre variable ou en validant les mod``eles sur un autre échantillon afin d'améliorer la robustesse 


