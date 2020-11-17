#install.packages("MCMCpack")
library(MCMCpack)
#?MCMCpack
#??MCMCpack
library(plotly)
density <- ddirichlet(c(.1,.2,.7), c(1,1,1))
draws <- rdirichlet(2000, c(1,5,1) )
draws <- as.data.frame(draws)
attach(draws)
plot_ly(x=V1, y=V2, z=V3, type="scatter3d", mode="markers")

