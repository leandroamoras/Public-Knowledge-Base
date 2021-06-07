


Games #Exibindo matriz com quantidade de jogos de cada jogador por ano
row.names(Games) #Exibindo os nomes das linhas da matriz Games
colnames(Games)  #Exibindo os nomes das colunas da matriz Games
Games["LeBronJames", "2012"]  #achando numero de jogos de LeBron James em 2012

FieldGoals #Exibindo numero de pontos por ano

round(FieldGoals / Games, 1) #Media de pontos por partida, aredondado valor para 2 casas decimais

round(MinutesPlayed / Games) #Media de minutos jogados por partida, aredondado valorar, sem casas decimais.

