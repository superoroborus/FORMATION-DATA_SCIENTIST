###############################################################################
# TP : D�saisonnalisez � l'aide de la r�gression lin�aire
###############################################################################

# On souhaite d�saisonnaliser la s�rie temporelle airpass � l'aide de la r�gression lin�aire.
# On cr�� � cet effet les bases tendancielle et saisonni�re :
t=1:144

for (i in 1:12)
{
  su=rep(0,times=12)
  su[i]=1
  s=rep(su,times=12)
  assign(paste("s",i,sep=""),s)
}

# On effectue la r�gression lin�aire (le mod�le est transform�, comme vu en cours, 
# afin de pallier le probl�me de colin�arit�) sur la s�rie Yt  :
reg=lm(y~t+s1+s2+s3+s4+s5+s6+s7+s8+s9+s10+s11+s12-1)
summary(reg)

# Les diff�rents coefficients sont contenues dans `reg$coefficients` 
reg$coefficients

# On revient aux coefficients initiaux :
a=mean(reg$coefficients[2:13])
b=reg$coefficients[1]
c=reg$coefficients[2:13]-mean(reg$coefficients[2:13])

# et on obtient la s�rie corrig�e des variations saisonni�res (en n'oubliant pas de passer 
# � l'exponentiel pour revenir � Xt ) :
y_cvs=y-(c[1]*s1+c[2]*s2+c[3]*s3+c[4]*s4+c[5]*s5+c[6]*s6+c[7]*s7+c[8]*s8+c[9]*s9+c[10]*s10+c[11]*s11+c[12]*s12)
x_cvs=exp(y_cvs)
ts.plot(x,x_cvs,xlab="t",ylab="Airpass",col=c(1,2),lwd=c(1,2))
legend("topleft",legend=c("X","X_CVS"),col=c(1,2),lwd=c(1,2))