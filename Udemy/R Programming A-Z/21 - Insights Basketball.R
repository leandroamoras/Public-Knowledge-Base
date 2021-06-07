
#Salrio
myplot(Salary)                              #Salario dos jogadores
myplot(Salary / Games)                      #Salario por jogo (Os picos mais altos é por que ganharam sem jogar por estar machucados)
myplot(Salary / FieldGoals)                 #Salario por pontos de 3

#Metricas do jogo
myplot(MinutesPlayed)                       #Minutos jogados
myplot(Points)                              #Pontos

#Metricas de jogo normalizadas
myplot(FieldGoals / Games)                  #Pontos de 3 por jogo
myplot(FieldGoals / FieldGoalAttempts)      #Pontos de 3 por arremeço
myplot(FieldGoalAttempts / Games)           #Arremeço por jogo
myplot(Points / Games)                      #Pontos por jogo

#ObservaçÕes interesantes 
myplot(MinutesPlayed / Games)               #Minutos jogados por jogo
myplot(Games)                               #Jogos

#Tempo é valioso
myplot(FieldGoals / MinutesPlayed)          #Pontos de 3 por minuto jogado

#Player Style
myplot(Points / FieldGoals)                 #Pontos por pontos de 3
