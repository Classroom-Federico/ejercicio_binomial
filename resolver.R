overbooking <- 18
asientos <- 180
n <- overbooking + asientos
p <- 0.9 #probabilidad abordar el avión
x <- seq(150,n)
y <- dbinom(x,n,p)
plot(x,y,col="blue", xlab="pasajeros abordando", ylab="probabilidad")
abline(v=asientos,col="red")

#TODO
#Demostrar que 198 es la sobreventa ideal con un gráfico que muestre:
#Asientos vendidos (eje X) vs Revenue (eje Y) en donde se resalte usando
#una linea vertical que el pico de ganancia (Revenue) se encuentra en 198
