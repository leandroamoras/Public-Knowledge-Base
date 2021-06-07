#Atividade

"""
Sou um Data Scientist e vou ajudar o DP de Auditoria a avaliar uma demonstração financeira
da empresa X.

Recebi dois vetores de dados: Receita mensal e Despesas Mensais.

Minha tarefa é:
  
1. Lucro para cada mes.
2. Lucro apos Impostos por mes, (Taxa de Imposto é 30%)
3. Margem de Lucro, para cada mes em que é igual ao lucro fora do Imposto divido pela Receita.
4. Bons meses, em que o Lucro, pós-imposto foi maior que a media do ano.
5. Piores meses, em que o Lucro, após-impostos foi inferior a media do ano.
6. Melhor mes, em que o Lucro, após-impostos foi maximo o ano.
5. Pior mes, em que o Lucro apos Impostos foi minimo para o ano.

Notas:
  
1. Todos restultados devem ser apresentados como vetores (Vetores Verdadeiros e Falsos)
e isso inclui: Melhor Mês e o Pior Mês.
2. Valores em Dollar devem ser calculados com precisão de $0,01 mas precisam ser apresenteados
em unidades de $1.000, o que significa que cada unidade é $1.000 e não á ponto decimal.
3. Os resultados de margem de lucro precisam ser apresentados em unidade de porcentagem sem
pontos decimais, não se preocupe com %, basta obter o numero de 0 a 100.
4. Seu colega disse que está certo que o imposto para qualquer mes seja negativo, em termos
contabeis, o imposto negativo se traduz em um ativo fiscal deferido, mas não entraremos em 
detalhes."""

#Data
rendas <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
despesas <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution

#1. Calcular Lucro de cada mes.

lucro <- rendas - despesas                                       #Subtraindo rendas com despesa.
lucro                                                            #Printando lucro.

#2. Calcular Lucro Após Imposto por mes, (Taxa de Imposto igual á 30%).

imposto <- round(lucro * 0.3, 2)                                 #Multiplicando lucro por 0.3 e deixando apenas 2 casas decimais.
imposto                                                          #Printando imposto

lucro.apos.imposto <- lucro - imposto                            #Subtraindo lucro com imposto.
lucro.apos.imposto                                               #Printando Lucro Apos Imposto.


#3. Calcular Margem de Lucro por mes, (Lucro Apos Imposto divido pela Renda).

margem.de.lucro <- round(lucro.apos.imposto / rendas, 2) * 100   #Dividindo Lucro Apos Imposto por Renda, deixando apenas 2 casas decimais e multiplicando por 100.
margem.de.lucro                                                  #Printando Margem de Lucro.

#4. Bons Meses, (Lucro Apos Imposto foi maior que a Média Anual).

media.anual <- mean(lucro.apos.imposto)                          #Pegando a media de Lucro Apos Imposto.
media.anual                                                      #Printando Media Anual.

bons.meses <- lucro.apos.imposto > media.anual                   #Comparando quais Lucros Apos Imposto são maiores que a Media Anual.
bons.meses                                                       #Printando Bons Meses

#5. Piores Meses, (Lucro Apos Imposto foi menor que a Media Anual).

piores.meses <- !bons.meses                                      #Comparando quais Lucros Apos Impostos são diferentes de Bons Meses
piores.meses                                                     #Printando Piores Meses

#6. Melhor Mes, (Maior Lucro Apos Imposto).

melhor.mes <- lucro.apos.imposto == max(lucro.apos.imposto)      #Compara todos os valores com o valor maximo do vetor e retorna True ou False.
melhor.mes                                                       #Printando Melhor Mes

#7. Pior Mes, (Menor Lucro Apos Imposto).

pior.mes <- lucro.apos.imposto == min(lucro.apos.imposto)        #Compara todos os valores com o valor minimo do vetor e retorna True ou False.
pior.mes                                                         #Printando Pior Mes

#Organizando Unidades

renda.1000 <- round(rendas / 1000)                               #Removendo todas casas decimais e dividno Renda por Mil.
despesas.1000 <- round(despesas / 1000)                          #Removendo todas casas decimais e divindo Despesas por Mil.
lucro.1000 <- round(lucro / 1000)                                #Removendo todas casas decimais e divindo Lucro por Mil.
lucro.apos.imposto.1000 <- round(lucro.apos.imposto / 1000)      #Removenod todas casas decimais e divindo Lucro Apos Imposto por Mil.

#Saida

renda.1000                                                       #Printando renda.1000
despesas.1000                                                    #Printando despesas.1000
lucro.1000                                                       #Printando lucro.1000
lucro.apos.imposto.1000                                          #Printando lucro.apos.imposto.1000
margem.de.lucro                                                  #Printando margem.de.lucro
bons.meses                                                       #Printando bons.meses
piores.meses                                                     #Printando piores.meses
melhor.mes                                                       #Printando melhor,mes
pior.mes                                                         #Printando pior.mes

#Mostrando saida em forma de Matriz

m <- rbind(                                                      #Criando Matriz M
  renda.1000,
  despesas.1000,
  lucro.1000,
  lucro.apos.imposto.1000,
  margem.de.lucro,
  bons.meses,
  piores.meses,
  melhor.mes,
  pior.mes
)
m                                                                #Printando M
