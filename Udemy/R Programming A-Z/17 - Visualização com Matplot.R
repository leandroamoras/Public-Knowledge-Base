


?matplot()
matplot(FieldGoals) #Plotando sem transpor a matriz
matplot(t(FieldGoals)) #Plotando com a matriz transposta
#Criando graficos
matplot(t(Points/Games), type="b", pch=15:18, col=c(1:4,6)) #criando um puta de um matplot
legend("bottomleft", inset = 0.01, legend = Players, col=c(1:4,6), pch=15:18,horiz = F)

#Transpor uma Matriz, (Inveter colunas e linhas)
FieldGoals
t(FieldGoals) #Agora as colunas são linhas e as linhas são colunas
