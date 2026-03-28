##########################################################
a <- c(90,34,12,25,190)
barplot(a)
b <- c(99,45,21,45,170)
ab <- rbind(a,b)
cab <- cbind(a,b)
ab
barplot(ab)
barplot(ab, beside =T)
barplot(ab)

setwd("D:/Student Drive/R/Dataset/Datasets")
cars93 <- read.csv("cars93.csv")
cars93
type_cars <- table(cars93$Type)
barplot(type_cars)
#plots graph horizontally
barplot(type_cars,horiz=TRUE)
colors()
barplot(type_cars,horiz=T,col= "green")
barplot(type_cars,horiz=T,col=c("violetred4","pink","rosybrown",
        "turquoise1","steelblue1","slategray4"))
##############################################################

