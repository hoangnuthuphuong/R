#7.3
#a
cdf<-function(X){
  (3*X-2*X^3)*(X <= 1 & X >= 0) + 1 * (X > 1) + 0 * (X < 0)
}
curve(cdf,from=-0.5,to=1.5)

#d
cdf(2/3)-cdf(1/3)
