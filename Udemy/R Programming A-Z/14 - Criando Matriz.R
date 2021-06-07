



#Anotações
rm() #remove ps dados no campo data
rbind() #reconhece as linhas de uma matriz
cbind() #reconhece as colunas de uma matriz

#Criando minha primeira matriz
?matrix #Pedindo help da funçao
my.data <- 1:20   #Criando vetor de 1 a 20
my.data

A <- matrix(my.data, 4, 5)  #Transformando vetor em matriz 4 linhas por 5 colunas
A
A[2,3]   #Selecionado o numero 10 na matriz

B <- matrix(my.data, 4, 5, byrow = T) #Transformando vetor em matriz 4x5 com elementos ordenados por linha.
B
B[2,5] #Selecionando o numero 10 na matriz


#rbind()
r1 <- c("I", "am", "happy") #Criando vetor
r2 <- c("What", "a", "day") #Criando vetor
r3 <- c(1,2,3) #Criando vetor
C <- rbind(r1, r2, r3) #Unindo vetores separados por linha na matriz
C

#cbind()
c1 <- 1:5 #Criando vetores
c2 <- -1:-5 #Criando vetores
D <- cbind(c1, c2) #Unindo vetores separados por colunas na matriz
D


