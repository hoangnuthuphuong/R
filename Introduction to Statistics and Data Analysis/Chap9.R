#9.1
MLP<-function(lambda){
  27*log(lambda) - log(factorial(4)*factorial(6)) -
    5*lambda
}

curve(MLP, from=0, to=10)


#9.5
eland<-c(450,730,700,600,620,790)
t.test(eland)$conf.int

#9.11
attach(pizza)
timecat <- cut(time, breaks=c(-1,30,150))
library(epitools)
oddsratio(table(timecat,operator), method='wald')
