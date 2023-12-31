###############################################################################
# TP : Pr�voyez une s�rie � l'aide des m�thodes de lissage exponentiel
###############################################################################

# Si on souhaite pr�voir la s�rie airpass � l'aide du lissage exponentiel simple, 
# on peut utiliser les commandes suivantes :
les=ets(y,model="ANN")
les.pred=predict(les,12)
plot(les.pred)

# Pour le lissage exponentiel double :
led=ets(x,model="MMN")
led.pred=predict(led,12)
plot(led.pred)

# Et enfin pour la m�thode de Holt-Winters :
hw=ets(x,model="MMM")
hw.pred=predict(hw,12)
plot(hw.pred)