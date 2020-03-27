library(rugarch)

garchSpec <- ugarchspec(
  variance.model=list(model="sGARCH", garchOrder=c(1,1)),
  mean.model=list(armaOrder = c(0,0),include.mean=F))
fit = ugarchfit(spec = garchSpec, data = simulation_result$r)
print(fit)