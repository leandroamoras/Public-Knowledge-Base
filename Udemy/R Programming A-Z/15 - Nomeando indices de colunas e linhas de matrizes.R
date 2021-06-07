#Nomeando vetores
Charlie <- 1:5 #Criando vetor
Charlie

#Dando nomes
names(Charlie) <- c("a","b","c","d","e") #Criando vetor e mapeando indices
Charlie
Charlie["d"] #Localização de "d" no vetor
names(Charlie) #Volta a mostrar dados de Charlie sem indice

#Limpando nomes
names(Charlie) <- NULL #Removendo nomes e deixando apenas os indices
Charlie

#Nomeando Matrizes de Dimensão 1
temp.vec <- rep(c("a","B","zZ"), each=3) #Criando vetor e replicando valores 3x ordenando valores
temp.vec

Bravo <- matrix(temp.vec, 3, 3) #Criando Matriz
Bravo

row.names(Bravo) <- NULL #Confereindo se tem dados nulos
row.names(Bravo) <- c("How","are","you?") #Mudando o nome dos indices de linha
Bravo


colnames(Bravo) <- c("X", "Y", "Z") #Mudando nome dos indices de coluna
Bravo

Bravo["are", "Y"] <- 0
Bravo


row.names(Bravo) <- NULL #Voltando o nome dos indicdes de linha ao normal
Bravo
