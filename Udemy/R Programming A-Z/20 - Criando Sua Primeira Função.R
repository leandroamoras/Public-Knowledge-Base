
#Criando uma função simples


myplot <- function(data, rows=1:10){
  Data <- data[rows,,drop=F]                         
  matplot(t(Data), type="b", pch=15:18, col=c(1:4,6)) 
  legend("bottomleft", inset = 0.01, legend = Players[rows], col=c(1:4,6), pch=15:18,horiz = F)
}

#myplot: Nome atribuido a função
#function(Parametros){codigo}: função

#Parametros
#rows: Linhas que voce quer visualizar, desde que esteja no periodo de 1 a 10
#data: Data sets que voce quer visualizar 

myplot(Games)  #Ao rodar a função é exculta o codigo

