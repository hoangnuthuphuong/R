# Read
library(readxl)
pizza_delivery <- read_excel("C:/Ngôn ngữ lập trình R/pizza_delivery.xlsx")

# VIEW DATA
View(pizza_delivery)
fix(pizza_delivery)
pizza_delivery

# c.Create a new data matrix which consists of the first 5 rows and first 5 variables of the data.
pizza1 <- pizza_delivery[1:5,1:5]
fix(pizza1)

# SAVE THE DATA
write.csv(pizza1,file='pizza1.csv')
write.table(pizza1,file='pizza1.dat')
save(pizza1,file='pizza1.Rdata')

# d.Add a new variable “NewTemperature” to the data set which converts the temperature from ◦C to ◦F.
pizza_delivery$NewTemperature <- 32+1.8*pizza_delivery$temperature

# e.str, dim, colnames, names, nrow, ncol, head, and ail
str(pizza_delivery)
dim(pizza_delivery)
colnames(pizza_delivery)
names(pizza_delivery)
nrow(pizza_delivery)
ncol(pizza_delivery)
head(pizza_delivery)

