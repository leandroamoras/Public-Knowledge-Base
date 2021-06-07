#Definição de Vetor:
# Vetor é uma sequencia de elementos do mesmo tipo.
# EX; C <- 1,2,3,4,5

MyFirstVector <- c(3, 45, 56, 732) #Criando Vetor double
MyFirstVector                      #Imprimindo Vetor
is.numeric(MyFirstVector)          #Conferindo se é numerico
is.integer(MyFirstVector)          #Conferindo se é integer
is.double(MyFirstVector)           #Conferindo se é double
 
V2 <- c(3L, 12L, 243L, 0L)         #Criando vetor de integer
V2                                 #Imprimindo V2
is.numeric(V2)                     #Conferindo se é numerico
is.integer(V2)                     #Conferindo se é integer
is.double(V2)                      #Conferindo se é double

V3 <- c("a", "B23", "Hello")       #Criando vetor de caracter
V3                                 #Imprimindo V3
is.character(V3)                   #Conferindo se é caracter
is.numeric(V3)                     #Conferindo se é numerico

1:15                               #Criando sequencia de 1 a 15
seq(1,15,2)                        #A funçao seq permite criar critetios dentro da sequencia
z <- seq(1,15,5)                   #Criando vetor com a funçao seq
z                                  #Imprimindo vetor

rep(3, 100)                        #Replicando 3,100x
d <- rep(3, 50)                    #Replicando 3, 50x
rep("a", 5)                        #Replicando a, 5x

x <- c(80, 20)                     #Criando Vetor
y <- rep(x, 10)                    #Replicando x, 10x

#Como acessar elementos de um vetor

#Temos o seguinte vetor
w <- c("a", "b", "c", "d", "e")    #Criando vetor
w                                  #Imprimindo vetor

w[1]                               #Acessando 1 elemento do vetor
w[2]                               #Acessando 2 elemento do vetor
w[3]                               #Acessando 3 elemento do vetor
w[-1]                              #Acessando vetor menos o 1 elemento
v <- w[-3]                         #Criando vetor com o elemento 3 do vetor w
w[1:3]                             #Acessando elementos 1 a 3 do vetor
w[3:5]                             #Acessando elementos 3 a 5 do vetor
w[c(1,3,5)]                        #Acessando elementos 1,3 e 5 do vetor
w[c(-2,-4)]                        #Acessando vetor menos o 2 e 4 elemento
w[-3:-5]                           #Acessando vetor menos elementos de 3 a 5
w[1:2]                             #Acessando elementos 1 e 2 do vetor
