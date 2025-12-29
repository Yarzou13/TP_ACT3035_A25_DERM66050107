TP_ACT3035_A25_DERM66050107
ACT3035A25 - Travail Pratique

Description du projet:

Ce projet vise à analyser un jeu de données d'assurance santé afin d'identiier les facteurs influencant les couts medicaux individuels. À l'aide de technique de nettoyage, d'analse exploratoire et de modélisation actuarielle, l'objectif est de mieux comprendre la relation entre les caractéristiques des assurés (age, IMC, sexe, statut de fumeur, région) et les couts observés. Le projet s'inscrit dans un contexte de tarification et de gestion du risque, en utilisant des méthodes vues dans le cadre du cours ACT3035

D'où proviennent les données :

Cet ensemble de données a été trouvé sur le site Kaggle.com qui contient des jeux de donnés publiques tiré directement du livre "Machine Learning with R" de l'auteur Brett Lantz qui sert d'ensemble de donnés à des fins éducatives. Il porte sur les couts d'assurance médicale aux États-Unis (il s'agit de données fictives et simulées).


Comment y accéder:

Étant donné que les données sont fournies sous format CSV, l'ensemble de données a d'abord été téléchargé manuellement. Par la suite, conformément aux méthodes vues en cours, la fonction read.csv() a été utilisé afin d'importer le fichier dans l'envrionnement R pour procéder à l'analyse.


Résumé des résultats:

Les résultats montrent que les couts medicaux augmentent globalement avec l'age et l'IMC et que le statut de fumeur est le facteur le plus déterminant associé à des couts plus élevés. Le modèle linéaire généralisé met en évidence l'effet significatif de ces variables sur le niveau moyen des couts, tandis que la regression logistique confirme leur role dans la probabilité d'appartenir au gros des assurés à couts élevés. Certaines différences régionales ont également été obersvées. Dans l'ensemble, les résultats sont cohérents avec les attentes actuarielles et confirment l'importance de ces variables dans l'analyse du risque.
