#Criar um DataSet básico 2x2

#Função data.frame - cria DataFrames:
#Todas colunas precisam ter o mesmo numero de valores.
#Atenção aos parenteses.
dados2<- data.frame( "col1"= 1:5,
                     "col2"= c(5,6,9,10,20))

dados2 #Imprimiu dados2


#Funçoes Importantes:

#apply: Aplica uma função a lin ou col de um DataFrame ou Matriz.
apply(x, margem, função, outros argurmentos)
#x: DataFrame ou Matriz.
#margem: [lin,col].
#função; Função.
#argumentos: Argumentos adicionais.

apply(dados2,2,sum) #Soma das col.
#R:(col1 = 15 e col2 50)
apply(dados2,1,sum) #Soma das lin.
#R:(lin1=6, lin2=8, lin3=12, lin4= 1)
apply(dados2,2,mean)#Média das col.

#tapply: Aplica uma função a um subconjunto de uma DataFrame.
tapply(x,fator,função, outros argumentos)

#Criando um DataFrame com subjconjunto:
dados3<- data.frame("col1"= 1:5,#numero de elementos = 5
                    "col2"= c(5,6,9,10,20),#numero de elementos = 5
                    "col3"= c("a","b","b","a","a"))#numero de elementos = 5
dados3

tapply(dados3$col1,dados3$col3,mean)#Média da col 1, baseado na col 3.
#R:(a= 3.333333, b=2.500000)
tapply(dados3$col2,dados3$col3,mean)#Média da col 2, baseado na col 3.
#R:(a=11.666667, b=7.500000)
tapply(dados3$col2,dados3$col3,sum)#Soma da col 2, baseado na col 3.
#R:(a= 35, b=15)





