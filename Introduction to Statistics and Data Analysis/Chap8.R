#8.2
#a
1-pnorm(50,42.1,20.8)
#b
pnorm(40,42.1,20.8)-pnorm(30,42.1,20.8)

#8.4
pbinom(2,10,0.5)
1-pbinom(7,10,0.5)

#8.6.
#a
raffle <- function(n){
  p <- 1-((choose(500,2)*choose(3500,n-2))/(choose(4000,n)))
  -((choose(500,1)*choose(3500,n-1))/(choose(4000,n)))
  -((choose(500,0)*choose(3500,n))/(choose(4000,n)))
  return(p)
}
raffle(50:100)
raffle(63:64)
#b
nb <- seq(1:75)
plot(nb,tombola(nb),type='l')

#8.7
#a
pgeom(2,0.4878)
#b
dbinom(2,4,0.4878) 

#8.11
#a
set.seed(24121980)
R <- 1000
means <- c(rep(NA,R))
for(i in 1:R){means[i] <- mean(rnorm(1000))}
mean(means)
var(means)
plot(density(means))

#b
means2 <- c(rep(NA,R))
for(i in 1:R){means2[i] <- mean(rexp(1000))}
mean(means2)
var(means2)
plot(density(means))



