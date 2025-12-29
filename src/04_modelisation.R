# Modélisation actuarielle

# Les données train et test ont déja été set dans le RScript 02_nettoyage

# Modèle glm

modele_glm <- glm(
  couts~ age + imc + enfant + sexe + fumeur + region,
  data = train,
  family = gaussian()
)

summary(modele_glm)

# Predictions 
pred_glm <- predict(modele_glm, newdata = test, type="response")

# Évaluation moyenne erreur quadratique moyenne
mse_glm <- mean((test$couts - pred_glm)^2)
mse_glm


# Modèle régression logistique 

# On base le seuil sur la médiane
seuil <- median(train$couts)

# Paramétrisation de cout élevé
train$cout_eleve <- ifelse(train$couts>seuil, 1, 0)
test$cout_eleve <- ifelse(test$couts>seuil, 1, 0)

# Modéle logistique 
modele_log <- glm(
  cout_eleve~age+imc+enfant+sexe+fumeur+region,
  data=train,
  family=binomial()
)



