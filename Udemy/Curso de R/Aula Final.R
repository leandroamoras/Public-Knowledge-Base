#Exercicios explicação
#Revisão

data()# Acesso aos DataSets do R

View(ChickWeight) #Visualizar DataSet

frango<- ChickWeight #Renomeia o DataSet para "frango"

View(frango) #Visualizar DataSet

str(frango) #Estrutura do DataFrame

#Gráficos
hist(frango$weight) #Gráfico de barras
boxplot(frango$weight) #Gráfico boxplot
plot(x=frango$Time,y=frango$weight) #Gráfico comparativo
plot(x=frango$Diet,y=frango$weight) #Gráfico comparativo

#Média
mean(frango$weight)
sd(frango$weight)

#estatisca básica
table(frango$Time)#Conta cada elemento unico em uma coluna
#R:elemento:0  2  4  6  8 10 12 14 16 18 20 21 
#  aparece :50 50 49 49 49 49 49 48 47 47 46 45 

#diferenças especificas
tapply(frango$weight,frango$Diet,mean)#Media de "weight" por cada dieta
tapply(frango$weight,frango$Time,mean)#Media de "weight" por cada tempo

#Teste estatistico
#dietas

x1<- frango[frango$Diet==1,]#Filtra apenas campos com "1" na col "Diet" 
x2<- frango[frango$Diet==2,]#Filtra apenas campos com "2" na col "Diet" 
x3<- frango[frango$Diet==3,]#Filtra apenas campos com "3" na col "Diet" 
x4<- frango[frango$Diet==4,]#Filtra apenas campos com "4" na col "Diet" 

View(x1) #visualização de campos com "1" na col "Diet" 

t.test(x1$weight,x3$weight) #Maior diferença entre x1 e x3

t.test(x3$weight,x4$weight) #Maiores numeros
