

# ---- -2 ---- -1 ---- 0 ---- 1 ---- 2 ----

#funçao rnorm gera valores aleatorios

rm(answer)                      #removendo answer
x <- rnorm(1)


if(x > 1){                      #criando loop que identifica se x é maior que 1
  answer <- "Greater than 1"    #Se x > 1, answer será retornado dizendo "Maior que 1".
} else if(x >= -1){
  answer <- "Between -1 and 1"  #Se x >= -1, answer será retornado dizendo "Está entre -1 e 1".
} else{
  answer <- "Less than -1"      #Se x < -1, answer será retornado dizendo "Menor que -1".
}
  