#4.5
X <- c(-6,-5,2,9,4)
Y <- c(91,89,76,9,12)
Z <- c(rep('Davos',12),rep('Polenca',12),rep('Basel',12))
cor(X[Z=='Davos'],Y[Z=='Davos'])
cor(X[Z=='Basel'],Y[Z=='Basel'])
cor(X[Z=='Polenca'],Y[Z=='Polenca'])


#4.6
decathlon <- read.csv('decathlon.csv', row.names=1)
attach(decathlon)
cor(X.Discus,X.High.jump)


#4.9
#a
pizza <- read.csv('pizza_delivery.csv')
pizza$tempcat <- cut(pizza$temperature, breaks=c(0,65,100))
pizza$timecat <- cut(pizza$time, breaks=c(0,30,100))
attach(pizza)
addmargins(table(tempcat,timecat))

#b
(101∗261)/(213∗691)

#c
library(vcd)
library(ryouready)
library(lattice)
assocstats(xtabs(~tempcat+timecat))
ord.gamma(table(tempcat,timecat))
ord.tau(table(tempcat,timecat))
barchart(table(tempcat,timecat),horizontal=F,stack=T)

#d
plot(time,temperature)
cor(time,temperature)
cor(time,temperature,method='spearman')

#e
boxplot(temperature~driver)
boxplot(temperature~operator)
cor(temperature,pizzas)
cor(temperature,bill)




