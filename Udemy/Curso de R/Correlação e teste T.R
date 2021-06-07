#Testes estatisticos - Correlação e teste T

data() #Mostra os DataSets diponiveis.

View(Orange) #Visualiza o DataSet desejado.

#Correlação:
?cor.test#Consulta Funçao no Help
cor.test(Orange$circumference,Orange$age)
#cor.test: Teste de correlação
#Orange: DataSet desejado.
#$: Operador de acesso.
#circumference: Coluna do DataSet Orange.
#age: Coluna do DataSet Orange.


#Teste T
?t.test #Consulta Funçao no Help
# | significa "ou"
laranja<- Orange[Orange$Tree=="1"|Orange$Tree=="2",]

t.test(laranja$circumference~laranja$Tree)

