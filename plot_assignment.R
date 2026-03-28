setwd("D:/Student Drive/R/Dataset/Datasets")
singapore_auto <- read.csv("singaporeAuto.csv")
singapore_auto
#1
boxplot(singapore_auto$Exp_weights,col="pink")
#2
boxplot(singapore_auto$Exp_weights ~ singapore_auto$VehicleType,
        col=c(6,3,23,34,45,67,89,100,123,124))
#3
car2 <- read.csv("cars2.csv")
car2
plot(car2$speed,car2$dist,xlab="Speed",ylab="distance",pch=10,col="red")
