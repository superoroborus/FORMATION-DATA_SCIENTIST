###############################################################################
# TP : D�saisonnaliser une s�rie temporelle � l'aide de la fonction decompose
###############################################################################

# On utilise la fonction `decompose` :
decomp.x=decompose(x,type="multiplicative")
plot(decomp.x)