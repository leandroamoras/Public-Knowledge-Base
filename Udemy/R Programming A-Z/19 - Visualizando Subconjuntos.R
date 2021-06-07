
#Mostrando top 3 de jogadores que mais jogaram

Data <- MinutesPlayed[1:3,]                         #Pegando da primeira a terceira linha
matplot(t(Data), type="b", pch=15:18, col=c(1:4,6)) #criando um puta de um matplot
legend("bottomleft", inset = 0.01, legend = Players[1:3], col=c(1:4,6), pch=15:18,horiz = F)

#Mostrando dados de um jogador

Data <- MinutesPlayed[1,,drop=F]                         #Pegando da primeira linha
matplot(t(Data), type="b", pch=15:18, col=c(1:4,6)) #criando um puta de um matplot
legend("bottomleft", inset = 0.01, legend = Players[1], col=c(1:4,6), pch=15:18,horiz = F)







