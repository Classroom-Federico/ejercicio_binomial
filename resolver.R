overbooking <- 18
asientos <- 180
n <- overbooking + asientos
p <- 0.9 #probabilidad abordar el avión
x <- seq(0,n)
y <- dbinom(x,n,p)
plot(x,y,col="blue", xlab="pasajeros abordando", ylab="probabilidad")

#Aproximación normal
m <- n*p #aproximación promedio
s <- sqrt(n*p*(1-p)) #aproximación desviación estandar

yn <- dnorm(x, mean = m, sd = s)
lines(x,yn,type="l",col="red")