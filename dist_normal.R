# Distribución normal

#Una empresa de telecomunicaciones necesita hacer un estudio de mercado de sus subscriptores.
#La empresa tiene 100,000 suscriptores y planea tomar una muestra aleatoria simple de 400 subscriptores.
#De acuerdo a datos de un censo hecho el año pasado, el 20% de los subscriptores gana más de $40,000 al año.

#Tamaño encuesta
n <- 400
#Error estandar
se <- (sqrt(0.2*0.8)/sqrt(n)) * 100

# Para saber como se distribuye el porcentaje en la encuesta
# se puede usar la distribución normal
# https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/Normal
m <- 20
x <- seq(m - 4*se,m + 4*se, len=50)

# Probability density function (PDF)
y <- dnorm(x, mean = m, sd = se)
plot(x,y,col="blue", xlab="porcentaje > 40k en encuesta", ylab="probabilidad")

# Usando la función de distribución pnorm se puede responder la pregunta:
# ¿Cuál es la probabilidad que el porcentaje de personas que ganen más de $40,000 al año
# en la muestra este entre 18% y 22%?

p <- (pnorm(22, mean = m, sd = se) - pnorm(18, mean = m, sd = se))
print(paste("Probabilidad 18 <-> 22:",p))

# Usando la función qnorm, se puede responder la pregunta:
# ¿En qué rango estarán el 99% de los promedios?
piso <- qnorm(0.005, mean = m, sd = se)
techo <- qnorm(0.005, mean = m, sd = se, lower.tail = FALSE)
print(paste("Intervalo 99%:",piso,"<->",techo))
