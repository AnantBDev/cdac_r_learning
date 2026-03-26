p <- 45000
n <- 3
r <- 6
si<- p*n*r/100
si

##########################################################################
#numerical vector
x <- c(3.56,4.56,2.99,1.56)
class(x)
g<-c("r","k","g","k","r","r")
class(g)

x+3
x*2

a<-c(7,4,5,2)
b<-c(0.2,0.3)
a+b

v<-c(4.56,9,"lo")
v
k <- list(a=2,b=3.45,c="hi",d=3,e=T)
k
k$a
k$a

k <- list(a=3,b=6,c=c(2.3,22,99),d=90)
k
k$c
############################################################################
#matrix

m <- matrix(c(5,4,2,12,14,20),3,2)
m

v1 <- c(9,3,5,6,43,69)
v2 <- c(7,3,1)
rbind(v1,v2)
cbind(v1,v2)


d <- array(dim = c(5))
d

g <- array(dim=c(4,6))
g

a <-array(dim=c(3,5,2))
a
###########################################################################

a <- c("Atul","Pravin","Shwetha","Rekha")
b <- c(23,34,32,29)
df <- data.frame(a,b,p)
df
#############################################


a <- read.csv("D:/Student Drive/R/Dataset/Datasets/A.csv")

#cars93 <- read.csv("D:/Student Drive/R/Dataset/Datasets/Cars93.csv")
setwd("D:/Student Drive/R/Dataset/Datasets/")
cars93 <- read.csv("cars93.csv")

View(cars93)
View(a)

setwd("D:/Student Drive/R/Dataset/Datasets/")
cars2018 <- read.csv("cars2018.csv")
View(cars2018)

colnames(a)
colnames(cars93)

dim(cars93)

str(cars93)
str(a)
diam <- read.csv2("diamonds.csv")
dim(diam)

bolyw <- read.csv("Bollywood_2015_2.csv",header=F)
View(bolyw)
colnames(bolyw) <- c("Movie","BO","Budget","Verdict")

library(openxlsx)
bnk <- read.xlsx("bankruptcy.xlsx",sheet = 3)
View(bnk)
bnk <- read.xlsx("bankruptcy.xlsx",sheet = "data")

data()


data(airquality)
data(CO2)

###############################################################################################################################
data(Formaldehyde)

#writes data set to a file
write.csv(Formaldehyde,"forma.csv")

v <- c(34,56,76,87,12,14,98,67)
v>50
v[v>50]

v[1]
v[c(3,5,2)]

m <- matrix(c(5,4,2,12,14,20,5,23,50,10,34,19),3,4)
m
m[2,2]
m[2,3]
m[2,]
m[3,]
m[,3]




cars93 <- read.csv("cars93.csv")
View(cars93)
cars93[,5]
cars93[c(5,7,9,3),]

ss_cars <- subset(cars93,Price>50)
ss_cars
ss_cars <- subset(cars93, Price>25 & Type=="Compact")
ss_cars
ss_cars <- subset(cars93, Price>25 | Type=="Compact")
ss_cars



ss_cars <- subset(cars93, Price>25 & Type=="compact",
                  Select = c(Manufacturer, Model, Type, Price))
ss_cars
View(ss_cars)
#####################################################################################################################################################
#1.subset cars93 to get only small cars with USA orogin
View(cars93)
ss_usa_small_cars <- subset(cars93,Type=="Small" & Origin=="USA")
ss_usa_small_cars

#2.subset cars93 to get only non-USA origin cars with horsepower>150
ss_cars <- subset(cars93, Origin="non-USA" & Horsepower>150)
ss_cars
