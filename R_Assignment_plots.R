setwd("D:/Student Drive/R/Dataset/Datasets")
AutoCollission <- read.csv("AutoCollision.csv")
AutoCollission
library(tidyverse)
library(XML)
#1.
ggplot(data=AutoCollission,aes(x=Severity,y=Claim_Count,color=Vehicle_Use))+
  geom_point()
#2.
ggplot(data=cars93,
       aes(x=Type,y=Price,fill = Type))+
  geom_boxplot()
#3.
onstien <- read.csv("Ornstein.csv")
onstien

ggplot(data=onstien,aes(x=nation,fill=sector))+
  geom_bar()

#4
ggplot(data=onstien,aes(x=assets,y=interlocks,color=sector))+
  geom_point()+facet_grid(.~nation)

#5
mtcars <- read.csv("mtcars.csv")
mtcars$gear <- factor(mtcars$gear)
ggplot(data=mtcars, aes(x=disp,y=mpg,color=gear))+
  geom_point()
