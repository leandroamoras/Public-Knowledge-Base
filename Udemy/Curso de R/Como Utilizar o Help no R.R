#Ajuda no R

#Não vai tirar a media pois, 8 está como string.
mean ("8") #mean (Função que tira a media de um numero)

#Vai retornar a meia pois entre 1 e 8 pois estão como numeros.
mean (1:8)

#Vai abrir a aba de ajuda
help.start() 

#Vai explicar como usar "*" ou qualquer coisa que você quiser.
help("*")

#Buscas o nome correto de uma funçao desejada.
help.search("mean")

#Funções semelhantes as funções Help.
?sd #Mesma coisa do help
??sd #Mesma coisa do help.search

#Busca por todas as funçoes cuja o nome está entre "".
apropos("help") #Funções contendo "help".
apropos("mean") 

#Da um exemplo completo de como utilizar uma função.
example(mean)
example(plot)
