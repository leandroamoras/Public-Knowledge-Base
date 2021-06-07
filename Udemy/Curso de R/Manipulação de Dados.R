#Manipulando DataFrames:

#Visualização:
View(dados1) #Visualiza a tabela.
head(dados1) #Mostra as primeiras linhas de cada coluna.
names(dados1) #Mostra os titulos das colunas.
str(dados1) #Mostra a estrutura do data frame.

#Acessando elementos do DataFrame:
#dataframe[lin,col]

dados1[2,3]#Acessa o elemento que localizado na lin 2 e col 3.
dados1[1,] #Acessa a lin 1 (todas as colunas).
dados1[,3] #Acessa a col 3
dados1$altura #Acessa a coluna "altura" da tabela.

#Usar funções nas col de um dataframe:
mean(dados1$altura) #média da col altura

#Filtrando Dados:

feminino<- dados1[dados1$genero=='feminino',]
View(feminino)

altos<- dados1[dados1$altura>1.6,]
View(altos)

altos_nota5<- altos[altos$nota==5,]
View(altos_nota5)

#Excluir uma col de dados:
dados1_<- dados1[,-1]#Exclui uma coluna.





