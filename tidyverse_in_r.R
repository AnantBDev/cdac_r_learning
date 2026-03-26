#data harmonization
setwd("D:/Student Drive/R/Dataset/Datasets")
library(tidyverse)#collection of packages for data harmonization
#Very popular

cars93 <- read.csv("cars93.csv")

ar_cars <-  arrange(cars93,price)
ar_cars <- arrange(cars93,desc(price))

ar_cars <- arrange(cars93, Type, Price)
#########################################

#select function

s1 <- select(cars93,Manufacturer,Price,RPM)
View(s1)
s1 <- select(cars93,Manufacturer:Max.Price)
s1
ss_cars <- filter(cars93,Type=="small")
ss_cars <- filter(cars93,Type=="small" & Price>10)

ss_cars <- filter(cars93,Type %in% c("Small","Compact"))

ren_cars <- rename(cars93,Maximum=Max.Price, Minimum=Min.Price)
ren_cars
############################################################
#creating any new column in existing data frame
data(cars)
cars$ratio <- cars$speed/cars$dist
#or
data(cars)
cars <-  mutate(cars,ratio=speed/dist)
cars
##########################################################
#summarise function gives 
summarise(cars93,mu_price=mean(Price))
summarise(cars93,mu_price=mean(Price),
mu_rpm=mean(RPM),mu_hp=mean(Horsepower))

grp_type <-  group_by(cars93,Type)
summarise(grp_type,mu_price=mean(Price),
          mu_rpm=mean(RPM),mu_hp=mean(Horsepower))

#Equivalent SQL stmt:
#select avg(Price) as mu_price,avg(RPM) as mu_RPM,
#avg(Horsepower) as mu_hp from cars93
#group by Type
#############################################################

a <- read.csv("A.csv")
b <- read.csv("B.csv")
ab <- inner_join(a,b,by="IdNum")

rj <- right_join(a,b,by="IdNum")
lj <- left_join(a,b,by="IdNum")
fj <- full_join(a,b,by="IdNum")
##############################################################
