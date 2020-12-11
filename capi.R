#install.packages("MCMCpack")
#install.packages("Compositional")
install.packages("dirichlet", repos="http://R-Forge.R-project.org")
library(dirichlet)
library(MCMCpack)
#?MCMCpack
#??MCMCpack
#library(plotly)
#density <- ddirichlet(c(.1,.2,.7), c(1,1,1))
#draws <- rdirichlet(2000, c(1,5,1) )
#draws <- as.data.frame(draws)
#attach(draws)
#plot_ly(x=V1, y=V2, z=V3, type="scatter3d", mode="markers")
library(compositions)
library(tensorA)


Solved <- read.delim("~/Escritorio/Proyectos/AboutEvidence/Solved-cases.csv")
attach(Solved)

# Descriptive statistics
hist(DBD.ABD, breaks = 30, include.lowest = TRUE, main = "DBD - ABD")
plot(sort(DBD.ABD), ylab = "DBD - ABD", xlab = "Cantidad de casos", pch = 20)
plot(ecdf(DBD.ABD)) # Diferenciar por año de secuestro de la madre

# Not normal
z.norm<-(DBD.ABD-mean(DBD.ABD))/sd(DBD.ABD)
qqnorm(z.norm)
abline(0,1)

# Dirichlet magic
fitDirichlet(DBD.ABD, elog=mean(ult(DBD.ABD)),alpha0=rep(1,length(elog)),maxIter=20,n=nrow(DBD.ABD))
Z <- rdirichlet(100, c(4,3,2))

x <- rDirichlet.acomp(100,c(1,2,3,4))
fitDirichlet(x)
x
