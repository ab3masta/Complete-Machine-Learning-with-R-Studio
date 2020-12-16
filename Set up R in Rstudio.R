#Basic of R in R studio
2+5
print("My name is Abou")

x <- 12
y <-6
z <- x+y
print(z)

w <- c(1,2,3,4)
y <- 1:10
ls()
rm(x)
remove(y)
remove(list = ls())
# Packages in R

install.packages("LiblineaR")

library()

search()
require("LiblineaR")
detach("package:LiblineaR")
? LiblineaR

#Inputting data part 1: Inbuilt datasets of R
#   See all datasets i
data() # Or
library(help = "datasets")

? iris
str(iris)

iris
data("iris")

#Inputting data part 2: Manual data entry
x1 <-1:10
x2 <-c(2,5,7,4)
x3 <-seq(5,50, by=5)
x4 <- scan() #manualy entry value one by one

# Inputting data part 3: Importing from CSV or Text files
Products <- read.table("D:/codeSourceFolder/Rstudio/Complete Machine Learning with R Studio - ML for 2020/data/Product.txt",header = TRUE , sep = "\t")
str(Products)

Customer = read.csv("D:/codeSourceFolder/Rstudio/Complete Machine Learning with R Studio - ML for 2020/data/Customer.csv",header = TRUE)
str(Customer)
View(Customer)

# Creating Barplots in R
y <- table(Customer$Region)
y
View(y)
barplot(y)
barplot(y[order(y)]) # Or -y
barplot(y[order(y)],horiz = TRUE,col = c("red","green","blue","beige"),border = NA,main = "Freq \n of Regions",xlab = "Number of Customers")

colors() #List of color

png(filename = "D:/Freq.png" , width = 888 , height = 520)
barplot(y[order(y)],horiz = TRUE,col = c("red","green","blue","beige"),border = NA,main = "Freq \n of Regions",xlab = "Number of Customers")
dev.off()

# Create Histograme in R
hist(Customer$Age)
hist(Customer$Age, breaks=5)
hist(Customer$Age, breaks=c(0,40,60,100),col = c("red","green","blue","beige"),main = "Histogram of Age")
