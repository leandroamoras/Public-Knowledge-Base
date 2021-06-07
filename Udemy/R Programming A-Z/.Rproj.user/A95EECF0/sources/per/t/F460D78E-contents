
#Importando Arquivo
getwd()
setwd("C:/Users/leandro.amoras/Desktop/R programming A-Z")
getwd()

movies <- read.csv("Movie-Ratings.csv")
head(movies)

#Um bom Grafico deve ter:

#Data
#Estetica
#Geometria
#Statistica
#Facets
#Cordenadas
#Tema

#_________________________Data

colnames(movies) <- c("Film", "Genre", "CriticRating", "AudienceRating", "BudgetMillions", "Year")
head(movies)
tail(movies)
str(movies) #Olhando a estrutura 
summary(movies)

factor(movies$Year) #Identificando levels na coluna Year
movies$Year <- factor(movies$Year) #Classificando dados de Year em levels

summary(movies) #Tudo isso para que as funções summary e str mostre que year tem levels
str(movies)

#_______________________Estetiva
library(ggplot2) #Ativando ggplot2

ggplot(data=movies, aes(x=CriticRating, y=AudienceRating)) #sem o geom, o grafico fica em branco

#Add geometry
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating)) + #com o geom o grafico toma forma
  geom_point()

#Add colour
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre)) + 
  geom_point()

#Add size
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating,
                        colour=Genre, size=Genre)) + 
  geom_point()

#Add size - melhor caminho
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating,
                        colour=Genre, size=BudgetMillions)) + 
  geom_point()

#_________________________Plotando com layers
p <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating,
                             colour=Genre, size=BudgetMillions))
#Voce pode guardar um plot em uma variavel em ggplot2, Para apresentar o grafico, basta somar com geom desejado

#Point
p + geom_point()

#Lines
p + geom_line()

#multiple layers
p + geom_line() + geom_point()

#____________________________Overrriding Aesthetics

q <-  ggplot(data=movies, aes(x=CriticRating, y=AudienceRating,
                                  colour=Genre, size=BudgetMillions))

#Add geom layer
q + geom_point()

#Overriding aes
#ex1, size
q + geom_point(aes(size=CriticRating))

#ex2. colour
q + geom_point(aes(colour=BudgetMillions))


#Voltando plot ao original
q + geom_point()

#ex3. localização
q + geom_point(aes(x=BudgetMillions)) + 
  xlab("Budget Millions $$$") #colocando nome no eixo x

#ex4.
#reduzindo largura das linhas

p + geom_line(size=1) + geom_point()

#_______________________ Histrograms an Density Charts

s <- ggplot(data = movies, aes(x=BudgetMillions))
s + geom_histogram(binwidth = 10)

#add colour
s + geom_histogram(binwidth = 10, aes(fill=Genre))

#add a border
s + geom_histogram(binwidth = 10, aes(fill=Genre), colour="Black")

#As vezes voce precisa adicionar densidade
s + geom_density(aes(fill=Genre))
s + geom_density(aes(fill=Genre), position="stack")


#_______________________ Stating Layer Tipes

t <- ggplot(data=movies, aes(x=AudienceRating))
t + geom_histogram(binwidth=10,
                   fill="White", colour="Blue")

#Another way:
t <- ggplot(data=movies)
t + geom_histogram(binwidth = 10,
                   aes(x=AudienceRating),
                   fill="White", colour="Blue")








