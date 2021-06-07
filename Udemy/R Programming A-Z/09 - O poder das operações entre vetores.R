
#Programa loop especifico em R

x <- rnorm(5)           #Criando um vetor com elementos aleatorios
x                       #Imprimindo vetor


for(i in x){            #Criando loop que retorna todos elementos de X
  print(i)
}

print(x[1])             #Acessando elemento 1 do vetor x
print(x[2])             #Acessando elemento 2 do vetor x
print(x[3])             #Acessando elemento 3 do vetor x
print(x[4])             #Acessando elemento 4 do vetor x
print(x[5])             #Acessando elemento 5 do vetor x


#Programa convencional de loop

for(j in 1:5){
  print(x[j])
}


#------------------------- 2nd Part for today


N <- 100
a <- rnorm(N)
b <- rnorm(N)



#Vectorized approach

c <- a * b                 #Trabalhar dessa forma é mais eficiente

#De-vectorized approach


d <- rep(NA,N)            #Do que trabalhar dessa forma

for(i in 1:N){
  d[i] <- a[i] * b[i]
}


