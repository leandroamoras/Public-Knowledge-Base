


N <- 1000000
counter <- 0
for( i in rnorm(1000)){
  if(i > -1 & i < 1){
    counter <- counter + 1
  }
}
answer <- counter / N
answer

#comparar para  68.2% ou 0.682