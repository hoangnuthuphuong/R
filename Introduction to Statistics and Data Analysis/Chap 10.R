#10.3
na <- c(18.19,16.98,19.97,17.72)
a <- c(10.5,12.0, 9.54,11.02)
mean(na)
mean(a)
var(na)

t.test(na,mu=16.95)

t.test(a,mu=16.95,alternative='less')
t.test(na,a, alternative='greater')

var.test(na,a)
wilcox.test(na,a)


#10.5
qbinom(p=0.975,prob=0.1,size=230)
qbinom(p=0.025,prob=0.1,size=230)
#d.
fisher.test(matrix(c(30,200,7,112),ncol=2))

#10.8
fisher.test(matrix(c(327,295,391,1215),ncol=2,nrow=2))


#10.10
setwd('C:/Ngôn ngữ lập trình R/Introduction to Statistics and Data Analysis/Dataset')
#a
theatre <- read.csv('theatre.csv')
attach(theatre)
t.test(Culture[Sex==1],Culture[Sex==0])
#b
wilcox.test(Culture[Sex==1],Culture[Sex==0])
t.test(Culture[Sex==1],Culture[Sex==0],var.equal=TRUE)
#c
t.test(Theatre[Sex==1],Theatre[Sex==0],alternative='greater')
#d
t.test(Theatre,Theatre_ly,paired=TRUE)


#10.11
#a
t.test(temperature,mu=65,alternative='greater')
t.test(time,mu=30,alternative='less')
#b
table(free_wine)
binom.test(c(229,1037),p=0.15,alternative='less')
#c
hot <- cut(temperature,breaks=c(-Inf,65,Inf))
fisher.test(table(hot,operator))
chisq.test(table(hot,operator))
prop.test(table(hot,operator))
#d
chisq.test(table(branch))
#e
prop.test(table(branch, operator))
#f
chisq.test(table(driver, branch))
