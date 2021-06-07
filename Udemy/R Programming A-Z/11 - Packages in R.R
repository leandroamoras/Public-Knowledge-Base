 







#Instalando packages


install.packages("ggplot2")


#Função do ggplot2 package
?qplot() #tem que ativar o pacote a para aparecer o help da função


#Ativando um package

library(git2r) #Ao rodar, aparece a marcaçao no Packages


#Ativando um dataset
diamonds     #printando
?diamonds    #Help

#Demonstração de aplicação de ggplot2

qplot(data=diamonds, carat, price,
      colour=clarity, facets=.~clarity)


