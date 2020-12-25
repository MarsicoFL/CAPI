#install.packages("MCMCpack")
#install.packages("Compositional")
install.packages("dirichlet", repos="http://R-Forge.R-project.org")
library(dirichlet)
library(MCMCpack)
library(dplyr)
library(compositions)
library(tensorA)


Solved <- read.delim("Solved-cases.csv")
attach(Solved)
Solved$Group <- as.character(Solved$Group)
df <- data.frame("Cx", "14/02/218","14/02/2017",-360,as.character("A"))
names(df) <- c("Ind", "ABD", "DBD", "DBD.ABD", "Group")
Solved <- rbind (Solved,df)

Freqs <- data.frame(table(Solved$Group))

#
draw = 10000
alpha = c(1, 4, 60, 11, 6, 4, 4)
dimension = 7
x = rdirichlet(draw, alpha)
fiteo = data.frame(fit.dirichlet(x, "ml"))

?fit.dirichlet

o = data.frame(c(1,2,3,4,5,6,7))
names(o) <- "grupo"
fiteo <- cbind(o, fiteo)
plot(fiteo$grupo, fiteo$p, ylab = "prior", xlab = "group")

# Descriptive statistics
hist(DBD.ABD, breaks = 30, include.lowest = TRUE, main = "DBD - ABD")
plot(sort(DBD.ABD), ylab = "DBD - ABD", xlab = "Cantidad de casos", pch = 20)
plot(ecdf(DBD.ABD)) # Diferenciar por año de secuestro de la madre