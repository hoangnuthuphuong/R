# 3.1
distance <- c(7.6,12.1,12.5,14.8,16.2,16.5,17.5,18.5,27.4,29.9)
altitude <- c(238,342,398,466,502,555,670,796,912,1245)
mean(distance)
mean(altitude)
median(distance)
median(altitude)
quantile(distance,probs=0.75)
quantile(distance,probs=0.25)
quantile(altitude,probs=0.75)
quantile(altitude,probs=0.25)

# Do lech tuyet doi trung binh
amd <- function(mv){1/length(mv)*sum(abs(mv-median(mv)))}
amd(distance)
amd(altitude)

var(altitude)*9/10
var(distance)*9/10

# box plot
plot.new()
boxplot(altitude)
boxplot(distance)

# Gia tri trung binh
weighted.mean(c(10,17.5,25),c(4/10,4/10,2/10))


# 3.6
mymode <- function(vec){
  mt <- table(vec)
  names(mt)[mt == max(mt)]
}

#3.9
library(ineq)
investment <- c(800,10300,4700,2200)
plot(Lc(investment))
ineq(investment)


#3.10
#a.
setwd('C:/Ngôn ngữ lập trình R/Introduction to Statistics and Data Analysis/Dataset')
pizza <- read.csv('pizza_delivery.csv')
attach(pizza)
summary(pizza[,c('time','temperature','bill','pizzas')])

#b.
quantile(time,probs=0.99)
quantile(temperature,probs=0.99)

#c.
amdev <- function(mv){1/length(mv)*sum(abs(mv-mean(mv)))}
amdev(temperature)

#d.
sc.time <- scale(time)
mean(sc.time)
var(sc.time)

#e.
boxplot(temperature,range=0)
boxplot(time,range=0)

#f.
tc <- cut(time,breaks=seq(10,60,10))
weighted.mean(c(15,25,35,45,55),table(tc)/sum(table(tc)))
mean(time)

#g.
qqplot(time[driver=='Luigi'],time[driver=='Domenico'])
qqplot(time[driver=='Mario'],time[driver=='Salvatore'])
