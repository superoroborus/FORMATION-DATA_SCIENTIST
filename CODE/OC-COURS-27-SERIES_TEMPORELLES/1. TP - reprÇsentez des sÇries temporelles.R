###############################################################################
# TP : repr�sentez des s�ries temporelles
###############################################################################


# S�rie sunspot : nombre annuel de t�ches solaires de 1790 � 1970
plot(sunspot.year,xlab="t",ylab="Sunspots")

# Bruit blanc gaussien de loi N(0,3^2)
# Pour les simulations effectu�es dans ce document, on fixe arbitrairement la racine (seed) � 1789.
set.seed(1789)
plot(ts(rnorm(100,sd=3),start=1,end=100),xlab="t",ylab="Bruit blanc gaussien de variance 9")
abline(h=0)

# S�rie uspop : population des Etats-Unis, en millions, de 1790 � 1990 (Pas de temps d�cennal)
plot(uspop,xlab="t",ylab="Uspop")

# S�rie airpass : nombre mensuel de passagers a�riens, en milliers, de janvier 1949 � d�cembre 1960
# S�rie brute :
plot(AirPassengers,xlab="t",ylab="Airpass")
# Logarithme de la s�rie airpass
plot(log(AirPassengers),xlab="t",ylab="Airpass")

# S�rie beer : production mensuelle de bi�re en Australie, en m�galitres, de janvier 1956 � aout 1995
beer=read.csv("../Data/beer.csv",header=F,dec=".",sep=",")
beer=ts(beer[,2],start=1956,freq=12)
plot(beer,xlab="t",ylab="Beer")

# S�rie lynx : nombre annuel de lynx captur�s au Canada, de 1821 � 1934
plot(lynx,xlab="t",ylab="Lynx")


# Sauf mention contraire, on travaillera dans la suite du cours sur la s�rie temporelle airpass. 
# On la stockera sous la variable x, et son logarithme sous la variable y :
x=AirPassengers
y=log(x)