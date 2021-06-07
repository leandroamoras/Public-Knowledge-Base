#Criando dados
dados<- c(3,4,2,2,1)

#Gráficos Simples:
plot(dados) #gráfico de pontos.
plot(dados,type="l") #gráfico de linha.
plot(dados,type="o") #gráfico de pontos com linhas.
barplot(dados)#Gráfico de barras
hist(dados)#Histograma
boxplot(dados)#Boxplot
pie(dados)#Gráfico de pizza

#Adcionando detalhes:
barplot(dados, #grafico
main= "Titulo do gráfico", #titulo
xlab= "Nome do eixo X", #Eixo X
ylab= "Nome do eixo Y", #Eixo Y
names.arg = c("Segunda","Terça","Quarta","Quinta","Sexta") #nomes do eixo X

