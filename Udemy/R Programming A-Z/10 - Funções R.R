#Nessa Aula aprendi como consultar a Help de cada função
#Aprendi tambem que 1 função tem N argumentos, que podem facilitar o seu uso.
#Basta ler.


?rnorm() #O "?" antes da função abre a explicação dela
rnorm(5) #Retorna apenas variais em torno de 0, nunca de 1 pra cima.
rnorm(5, 10, 8) #Retorna variaveis entre 5 a 10 com o desvio padrao = 8.
rnorm(n = 5, mean = 10, sd = 8)


x<- c("a","b","c")


c() #combina valores
seq(10,20,3) #Gera sequencia de 10 a 20, pulando de 3 em 3
seq(from=10, to=20, by=3) #Gera sequencia de 10 a 20, pulando de 3 em 3
seq(from=10, to=20, length.out=100) ##Gera sequencia de 10 a 20, com 100 possibilidades
seq(from=10, to=20, along.with=x) #Gera sequencia de 10 a 20, igualando o comprimento de 20 com o numero de vetores em x
rep(5, 10) #Replicando o numero 5, 10 vezes
rep(5:6, 10) #Replicando 5 e 6, 10 vezes
rep(x, each=10) #Replica cada elemento de x, 10 vezes

print()


is.numeric()
is.integer()
is.double()
is.character()


typeof()

A<- seq(from=10, to=20, along.with=x)
A

sqrt(A) #Obtem a raiz quadrada do valor de cada elemento de A
B<- sqrt(A)
B 
paste()


#?