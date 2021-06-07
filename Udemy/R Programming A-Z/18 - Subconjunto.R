

x <- c("a", "b", "c", "d", "e")     #Criando Vetor
x                                   #Imprimindo Vetor

x[c(1,5)]                           #Extraindo elementos 1 e 5
x[1]                                #Extraindo elemento 1

#Crindo subconjuntos

Games                               #Carregando DataSet GAMES
Games[1:3,6:10]                     #Games[primeira a terceita linha, sexta a decima coluna]
Games[c(1,10),]                     #Games[primeira e ultima linha] (Comparando)
Games[,c("2008","2009")]            #Gsmes{todas linhas,colunas 2008 e 2009}

#Problema
Games[1,]                           #R entende que voce quer obter dados de um vetor e transforma a matriz em um
Games[1,5]                          

is.matrix(Games[1,])                #Perguntando pro R se o comando é uma matriz
is.vector(Games[1,])                #Perguntando pro R se o comando é um vetor

#Solução
Games[1,,drop=F]                    #Extraindo subconjunto da matriz corretamente
Games[1,5,drop=F]                   #Extraindo subconjunto da matriz corretamente





