#Exercicio

data("Orange")
data("ToothGrowth")

str(Orange)
str(ToothGrowth)

table(Orange)
table(ToothGrowth)

hist(Orange$circumference)
plot(Orange$age, Orange$circumference)
boxplot(Orange$circumference, Orange$Tree, Orange$circumference)

hist(ToothGrowth$len)
plot(ToothGrowth$dose, ToothGrowth$len)
boxplot(ToothGrowth$len, ToothGrowth$supp, ToothGrowth$len)

sd(Orange$circumference)
mean(Orange$circumference)
tapply(Orange$circumference,Orange$Tree,mean)
tapply(Orange$circumference,Orange$age,mean)

mean(ToothGrowth$len)
sd(ToothGrowth$len)
tapply(ToothGrowth$len, ToothGrowth$supp,mean)
tapply(ToothGrowth$len, ToothGrowth$dose,mean)

#Dividir Orange
x1= Orange[Orange$Tree== 1,]
x2= Orange[Orange$Tree== 2,]
x3= Orange[Orange$Tree== 3,]
x4= Orange[Orange$Tree== 4,]
x5= Orange[Orange$Tree== 5,]
#média
mean(x1$circumference)
mean(x2$circumference)
mean(x3$circumference)
mean(x4$circumference)
mean(x5$circumference)
#Teste T

t.test(x3$circumference,x4$circumference)
t.test(x2$circumference,x4$circumference)

#Dividir ToothGrowth
VC= ToothGrowth[ToothGrowth$supp== "VC",]
OJ= ToothGrowth[ToothGrowth$supp== "OJ",]
#Teste T
t.test(VC$len,OJ$len)
t.test(VC$dose,OJ$dose)