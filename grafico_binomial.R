library(ggplot2)
library(latex2exp)

# Un examen de 20 preguntas de opción múltiple, la probabilidad de *adivinar* la respuesta en una pregunta es 0.25.
# ¿Cuál es la probabilidad de pasar (acertar 12 preguntas o más)?

n <- 20
p <- 0.25
x <- seq(0,n)

pmf_binom <- data.frame(x = x, y = dbinom(x, prob = p, size = n))
cdf_binom <- data.frame(x = x, y = pbinom(x, prob = p, size = n))

# graficar pmf
g_binom_pmf <- ggplot(pmf_binom, aes(x,y)) + 
  geom_point() +
  ggtitle("Distribución binomial (pmf), n = 20, p = 0.25") + 
  ylab("Pr(x)") + xlab("x") +
  theme_classic(base_size = 18)

# graficar cdf
g_binom_cdf <- ggplot(cdf_binom, aes(x,y)) + 
  geom_point() +
  ggtitle("Distribución binomial (cdf), n = 20, p = 0.25") + 
  ylab(TeX(r'($Pr(X \leq x)$)')) + xlab("x") +
  theme_classic(base_size = 18)


print(g_binom_cdf)

# La probabilidad de acertar a 12 preguntas o más
pr_pasar = pbinom(11,prob=0.25,size=20, lower.tail = FALSE)