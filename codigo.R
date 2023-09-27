n <- 20000
p <- 200000
set.seed(1234)
idade <- abs(round(rnorm(n, 35, 7),0))
summary(idade)


hist(idade,
     main = 'Histograma da idade',
     ylab = 'Frequência',
     xlab= 'Idade (em anos completos)')


set.seed(1234)
altura <- abs(round(rnorm(n, 1.50, 0.1), 2))
summary(altura)

hist(altura,
     main = "Histograma da altura",
     ylab = "Freqüência",
     xlab = "Altura (em metros)")

set.seed(1234)
peso <- abs(round(rnorm(n, 55, 4), 2))
summary(peso)

imc <- round(peso/altura^2, 2)
summary(imc)

hist(imc,
     main = "Histograma do IMC",
     ylab = "Freqüência",
     xlab = "IMC")

salario <- abs(round(rnorm(n, 3000, 400), 2))
summary(salario)

hist(salario,
     main = "Histograma do salário mensal",
     ylab = "Freqüência",
     xlab = "Salário mensal (em R$)")

pop.carros <- rep(c(0,1,2,3), p)
pop.carros

carros <- sample(pop.carros, n)

rm(pop.carros)

summary(carros)


table(carros)


pop.filhos<-rep(c(0,1,2),p)
pop.filhos

set.seed(1)
filhos <- sample(pop.filhos, n)
rm(pop.filhos)

summary(filhos)


table(filhos)


pop.escolaridade <- rep(c(0, 1, 2, 3, 4, 5, 6), p)
set.seed(1234)
escolaridade.temp <- sample(pop.escolaridade, n)
escolaridade <- factor(escolaridade.temp,
                       levels = c(0, 1, 2, 3, 4, 5, 6),
                       labels = c("Analfabeto", "1º Grau", "2º Grau", "3º Grau",
                                  "Mestrado", "Doutorado", "PósDoc"),
                       ordered = TRUE
)
rm(pop.escolaridade, escolaridade.temp)
str(escolaridade)

summary(escolaridade)
table(escolaridade)

set.seed(1234)
fumante.n <- rbinom(n, 1, .40)
fumante.f <- factor(fumante.n,
                    levels = c(0, 1),
                    labels = c("não", "sim"),
                    ordered = TRUE)
str(fumante.f)
summary(fumante.f)

str(fumante.n)
mean(fumante.n)

pop.sexo <- rep(c(1, 2), p)
set.seed(1234)
sexo.temp <- sample(pop.sexo, n)
sexo <- factor(sexo.temp,
               levels = c(1, 2),
               labels = c("M", "F"),
               ordered = FALSE) 
rm(pop.sexo, sexo.temp)
str(sexo)

summary(sexo)

pop.profissao <- rep(0:2, p)
set.seed(1234)
profissao.temp <- sample(pop.profissao, n)
profissao <- factor(profissao.temp,
                    levels = c(0, 1, 2),
                    labels = c("Humanas", "Exatas", "Biológicas"),
                    ordered = FALSE
)
rm(pop.profissao, profissao.temp)
str(profissao)

summary(profissao)

df <- data.frame(id = 1:n,
                 altura,
                 peso,
                 imc,
                 sexo,
                 escolaridade,
                 profissao,
                 fumante.f,
                 fumante.n,
                 salario,
                 carros,
                 filhos)
str(df)

write.table(df, file = "projeto01.csv", sep = ",", col.names = TRUE, fileEncoding = "UTF-8")


summary(projeto01...projeto01.csv$altura);
summary(projeto01...projeto01.csv$salario);
summary(projeto01...projeto01.csv$peso);
summary(projeto01...projeto01.csv$imc);
summary(projeto01...projeto01.csv$escolaridade)
summary(projeto01...projeto01.csv$filhos)
summary(projeto01...projeto01.csv$carros)


summary(csvNosso$cpuu)
summary(csvNosso$memoria)
summary(csvNosso$disco)