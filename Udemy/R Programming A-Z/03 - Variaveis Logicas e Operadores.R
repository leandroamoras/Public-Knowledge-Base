#Logical:
#TRUE = T
#FALSE = F

4 < 5     #TRUE
10 > 100  #FALSE
4 == 5    #FALSE

#Operadores Logicos

# == (Igual)
# != (Diferente)
# <  (Menor)
# >  (Maior)
# <= (Menor ou Igual á)
# => (Maior ou Igual á)
# !  (Not)
# |  (Ou)
# &  (E)
# isTRUE(x)

#Testando

result <- 4 < 5   #Criando variavel logica
result            #Imprimindo variavel logica
typeof(result)    #Olhando tipo da variavel

result2 <- !(5 > 1) #Altera a logica ( No Caso isso Não é Verdadeiro)
result2             #Imprimindo

#Comparando variveis
result | result2 #Retorna True se uma for verdadeira.
result & result2 #Retorna True se as duas foram verdadeiras.
isTRUE(result)   #Confere se é verdadeiro