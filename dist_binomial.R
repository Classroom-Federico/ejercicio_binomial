# Distribución binomial

# En familias con 4 hijos, ¿qué proporción tienen más hijas que hijos?

# Se puede modelar este problema usando la distribución binomial
# https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/Binomial

n <- 4
k <- seq(0,n)
p <- 0.5

# Usar dbinom (PDF) para encontrar la probabilidad de cada escenario:
# k = 0 (hijas), k=1 (1 hija), k=2 (2 hijas), etc.
y = dbinom(k, size = n, prob = p)
plot(k,y,col="blue", xlab="número hijas", ylab="probabilidad")

# Probabilidad más hijas que hijos:
p_mas_hijas <- y[n] + y[n+1] #Sumar dos últimas probabilidades
print(p_mas_hijas)

# o también:
p_mas_hijas <- pbinom(n/2, size = n, prob = p, lower.tail = FALSE)
print(p_mas_hijas)