# 2.1.a.
results2014 <- c(0.6215,0.2223,0.0635,0.0240,0.0067,0.0620)
barplot(results2014)
barplot(results2014,names.arg=c('ANC','DA','EFF','IFP','COPE','Others'), col=gray.colors(6),ylim=c(0,0.7),xlab='Parties',ylab ='Votes(%)')

# 2.1.b.
results2009 <- c(0.6590,0.1666,0,0.0455,0.0742,0.0547)
difference <- results2014-results2009
barplot(difference,names.arg=c('ANC','DA','EFF','IFP','COPE','Others'), col=gray.colors(6))

# 2.2.d
goals <- c(6,24,91,8,4,25,3,83,89,34,25,24,18,6,23,10,28,4,63,6,60,5,40,2,22,26,23,26,
           44,49,34,2,33,9,16,55,23,13,23,4,8,26,70,4,6,60,23,95,28,49,6,57,33,56,7)
hist(goals, breaks=c(0,15,30,45,60,75,90,96))
plot(density(goals, adjust=1,kernel='gaussian'))

# 2.2.f(i)
plot.ecdf(goals)

# 2.2.f(ii)
goals_cat <- cut(goals, breaks=c(0,15,30,45,60,75,90,96),
                 labels=c(15,30,45,60,75,90,96))
plot.ecdf(as.numeric(as.character(goals_cat)))


# 2.6
fix(pizza_delivery)
attach(pizza_delivery)
hist(temperature,xlab='Temperature',xlim=c(40,90),ylim=c(0,400),col='lightgrey',ylab='Number of deliveries')
lines(c(65,65),c(0,400),type='l',lty=2,lwd=3)          
          
library(ggplot2)
p1 <- ggplot(data=pizza_delivery,aes(x=temperature))
p2 <- p1 + geom_histogram(fill='darkgrey',alpha=0.5,binwidth=2.5)+ scale_y_continuous('Number of deliveries')
plot(p2)


barplot(table(driver),ylim=c(0,200),col=gray.colors(7),
        ylab='Number of deliveries', xlab='Driver',main='Title')


p3 <- qplot(driver,data=pizza_delivery,aes=('bar'),fill=day)
p4 <- p3 + scale_fill_grey() +theme_bw()
plot(p4)
          
