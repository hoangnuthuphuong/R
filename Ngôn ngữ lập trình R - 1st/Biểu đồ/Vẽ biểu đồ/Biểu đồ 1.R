library(readxl)
GDP_VN <- read_excel("C:/Ngôn ngữ lập trình R/GDP_VN.xlsx", 
                     skip = 3)
View(GDP_VN)

names(GDP_VN)
str(GDP_VN)

# Tạo cột Total để tính tổng GDP các năm của từng hạng mục
GDP_VN$Total <- GDP_VN$`2000` + GDP_VN$`2001` + GDP_VN$`2002` + GDP_VN$`2003` + GDP_VN$`2004` + GDP_VN$`2005` + GDP_VN$`2006` + GDP_VN$`2007` + GDP_VN$`2008` + GDP_VN$`2009` + GDP_VN$`2010` + GDP_VN$`2011` + GDP_VN$`2012` + GDP_VN$`2013` + GDP_VN$`2014`
GDP_VN$Total

# Biểu đồ tròn về GDP của các năm
ss  <- colSums(GDP_VN[,2:15])
par(mfrow = c(2,2), mar = c(3, 3, 2, 1))
pie(ss , main = "Tổng số GDP của tất cả các năm")


pie(ss , col = gray(seq(0.4,1,length=15)),
    clockwise=TRUE, main = "Tổng số GDP của tất cả các năm")


pie(ss , col = rainbow(15),clockwise = TRUE, main="Tổng số GDP của tất cả các năm")












day<-c(17)
month<-c(9)
year<-c(2003)
rbind(day,month,year)

cbind(day,month,year)
?cbind
?attach

