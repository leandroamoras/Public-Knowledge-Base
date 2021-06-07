

#Metodo 1: Selecionando Arquivo Manualmente

stats <- read.csv(file.choose())                                 #file.choose, abre uma janela no windows pra que vc selcione o arquivo que quer.
stats                                                            #Imprimindo arquivo


#Metodo 2: 
getwd()                                                          #Mostra o diretorio que vc esta
setwd("C:/Users/leandro.amoras/Desktop/R programming A-Z")       #Indo para o diretorio que voce quer
getwd()                                                          #Mostrando o diretorio que vc esta
rm(stats)                                                        #Apagando stats
stats <- read.csv("DemographicData.csv")                         #importando arquivo pelo metodo 2
stats                                                            #Imprimindo arquivo




#________________________________________Explorando dados
stats
nrow(stats)                              #Contato o numero de linhas
ncol(stats)                              #Conta o numero de colunas
head(stats)                              #Mostra apenas as primeiras 5 linhas
head(stats, n=10)                        #Mostra as 10 primeiras linhas
tail(stats)                              #Mostra apenas as 5 ultimas linhas
tail(stats, n=8)                         #Mostra as 8 ultimas linhas
str(stats)                               #Verificando a estrutura
summary(stats)                           #Mostra as estatisticas do DataFrame


#________________________________________Usando $ sing
stats #Mostrando Data Frame
head(stats) #Mostrando 5 primeiras linhas
stats[3,3]  #Extraindo elemento da linha 3, coluna 3
stats[3, "Birth.rate"]  #Extraindo elemento da linha 3, coluna birth.rate

stats$Internet.users     #Acessando coluna de internet.users com $
stats$Internet.users[2]     #Acessando segundo elemento da coluna Internet.users com $
stats[,"Internet.users"]    #Acessando coluna Internet.users
levels(stats$Income.Group) #Vendo quantos levels tem em Income.Group


#__________________________________________Operações com DataFrame
stats[1:10,]       #olhando as 10 primeiras linhas
stats[3:9,]       #olhando da linha 3 a linha 9
stats[c(4,100),]   #Comparando linha 4 com linha 100

#Lembrando como {} trabalha:
stats[1,]                    #Fazendo isso em uma matriz, a linha extraida se torna um vetor
is.data.frame(stats[1,])     #Já no DF isso continua sendo um DF
stats[,1]                    #Isso não é dataframe
is.data.frame(stats[,1,drop=F])         #drop=F transforma em DataFrame


#multiplicando colunas
head(stats)                               #Mostrando as primeiras linhas de stats
stats$Birth.rate * stats$Internet.users   #Multiplicando Birth.rate com Internet.users
stats$Birth.rate + stats$Internet.users   #Somando Birth.rate com Internet.users

#Adcionando Coluna
head(stats)
stats$MyCalc <- stats$Birth.rate * stats$Internet.users #Criando nova coluna

#Testando conhecimento
stats$xyz <- 1:5                          #Será adicionado 1,2,3,4,5 e ficar replicando até a ultima linha
head(stats, n=12)                         #Visualizando 12 primeiras linhas

#Removendo colunas
head(stats)
stats$MyCalc <- NULL   #Exclui
stats$xyz <- NULL     #Exclui


#__________________________________________ Filtrando DataFrame
head(stats)                                 #Mostrando 5 primeiras linhas 
filter <- stats$Internet.users < 2          #Filtrando a coluna internet.users para a baixo de 2
stats[filter,]                              #Mostrando stats com Filter

stats[stats$Birth.rate > 40,]               #Mostrando brith.rates maiores que 40
stats[stats$Birth.rate > 40 & stats$Internet.users < 2,] #Mostrando linhas onde birth rate é maior que 40 e internet users é menor que 2
stats[stats$Income.Group == "High income",]  #Mostrando linhas em que a coluna Income Group é High Income
levels(stats$Income.Group) #Mostrando categorias de Income Group

head(stats)
stats[stats$Country.Name == "Malta",]       #Mostrando todos dados de Malta


#__________________________________________ Introdução ao Qplot
#install.packages("ggplot2")                #Instale se não tiver
library(ggplot2)                            #Verificando se ta instalado
?qplot                                      #Vendo como funnciona

#Criando um qplot
qplot(data=stats, x=Internet.users)            #data= Data frame desejado, x=coluna desejada
qplot(data=stats, x=Income.Group, y=Birth.rate)           #y= comparação com a coluna em x
qplot(data=stats, x=Income.Group, y=Birth.rate, size=I(3)) #size= Tamanho da representação
qplot(data=stats, x=Income.Group, y=Birth.rate, size=I(3), #colour= cor da representação
      colour=I("blue"))
qplot(data=stats, x=Income.Group, y=Birth.rate, geom= "boxplot") #geom= forma do grafico

#__________________________________________ Visualizando o que preciso
qplot(data=stats, x=Internet.users, y=Birth.rate) #Comparando dados de internet users com Birth rate
qplot(data=stats, x=Internet.users, y=Birth.rate,
      size=I(4))                                  #size= tamanho dos pontos
qplot(data=stats, x=Internet.users, y=Birth.rate,
      colour=I("red"), size=I(4))                 #colour= colorindo pontos
qplot(data=stats, x=Internet.users, y=Birth.rate,
      colour=Income.Group, size=I(5))             #Colour=Income.group mostra os levels de income group

#___________________________________________Crindo Data frames
mydf <- data.frame(Countries_2012_Dataset, Codes_2012_Dataset, 
                  Regions_2012_Dataset)        #Unindo vetores e transformando eles em DF

head(mydf) #Visualizando 
#colnames(mydf) <- c("Country", "Code", "Region") #Renomeando nome das colunas
rm(mydf) #removendo mydf

mydf <- data.frame(Country=Countries_2012_Dataset, Code=Codes_2012_Dataset, 
                   Region=Regions_2012_Dataset)  #Unindo vetores em um DF e renomeando as colunas
mydf #visualizando
head(mydf) #Visualizando 5 primeiras linhas
tail(mydf) #Visualizando 5 ultimas linhas
summary(mydf) #estatisticas do DF

#__________________________________________  Mesclando DataFrame
head(stats)
head(mydf)

merged <- merge(stats, mydf, by.x = "Country.Code", by.y = "Code") #Unidmo DF stats com DF mydf se as colunas correspondentes forem iguais.
head(merged)

merged$Country <- NULL #Removendo Contry, pois tem dados semelhantes a Contry code

head(merged) #Visualizando

str(merged) #Conferindo estrutura
summary(merged) #Visualizando estatisticas do DF

#__________________________________________ Visualizando com novo Split

#Tentativa
head(merged)
summary(merged)

qplot(data = merged, x = Internet.users, y = Region, 
      colour = Income.Group, size = I(4))

#Prof
qplot(data = merged, x=Internet.users, y=Birth.rate)
qplot(data = merged, x=Internet.users, y=Birth.rate,
      colour=Region)

#Aprendendo coisas novas

#1- shapes (Muda o formato dos pontos, formatos de 0 a 25)
qplot(data = merged, x=Internet.users, y=Birth.rate,
      colour=Region, size=I(5), shape=I(13))

#2 - Transparencia (vai de 0 a 1)
qplot(data = merged, x=Internet.users, y=Birth.rate,
      colour=Region, size=I(5), shape=I(19),
      alpha=I(0.3))
#3 - Titulo
qplot(data = merged, x=Internet.users, y=Birth.rate,
      colour=Region, size=I(5), shape=I(19),
      alpha=I(0.9),
      main="Birth Rate vs Internet Users")







