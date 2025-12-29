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
pred_glm <- predict(modele_glm, newdata = test, type="réponse")
