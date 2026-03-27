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
View(a)
b <- read.csv("B.csv")
View(b)
ab <- inner_join(a,b,by="IdNum")

rj <- right_join(a,b,by="IdNum")
View(rj)
lj <- left_join(a,b,by="IdNum")
fj <- full_join(a,b,by="IdNum")
##############################################################
#cars93 %>% 
library(tidyverse)
survey <- read.csv("D:/Student Drive/R/Dataset/Datasets/survey.csv")  
#Males who have never smoked
non_smokers <- filter(survey, Sex=="Male" & Smoke == "Never")
non_smokers
#students whose pulse rate are greater than 80
pulse_gt_80 <- survey %>% 
              filter(Pulse>80) %>% 
              select(Sex,Exer,Pulse)
pulse_gt_80
#######################################################################

RtHand <- survey %>% mutate(Ratio_Hnd=Wr.Hnd/NW.Hnd) %>% 
  select(Ratio_Hnd,Clap,Age)
survey
RtHand
########################################################################
DescStats <- survey %>% 
  summarise(
    mu_age = mean(Age, na.rm = TRUE),
    std_dev = sd(Age, na.rm = TRUE)
  )
DescStats
##########################################################################
DescStats <- survey %>%
  group_by(Sex) %>%
  summarise(
    mu_age = mean(Age, na.rm = TRUE),
    std_dev = sd(Age, na.rm = TRUE)
  )

# View the result
DescStats
#############################################################################
items <- read.csv("Items.csv")
orders <- read.csv("Orders.csv")
details <-read.csv("Ord_Details.csv")


items
orders
details

items_orders = inner_join(orders,details,by="Order.ID")
items_orders_details = inner_join(items_orders,details,by="Item.ID")
items_orders_details

#OR

comb_2 <- orders %>% 
          inner_join(details, by="Order.ID") %>% 
          inner_join(items, by="Item.ID")
comb_2
########################################################################

library(tidyverse)
table4a #internal dataset
data(table4a)
#Reshaping of data
gather(table4a, `1999`,`2000`,key='year',value='classes')

marks <- data.frame(name=c("A","B","C","D"),
                    maths=c(75,89,86,90),
                    physics=c(90,95,92,85),
                    chem=c(90,94,98,99))
gather(marks,`maths`,`physics`,`chem`,key='subjects',value='marks')

#or

marks |> #also a pipeline operator 
  gather(physics,chem,maths,key="subject",value="marks")

#############################################################
#pivot longer

table4a
pivot_longer(table4a, cols=c(`1999`,`2000`),
             names_to = "year",values_to="cases")

table4a
table4a %>% 
  pivot_longer(cols = c(`1999`,`2000`),
               names_to = 'year',values_to = "cases")

table4a %>% 
  pivot_longer(cols = -c(country),
               names_to = 'year',values_to = "cases")

############################################################
marks %>% 
  pivot_longer(cols=-c(name),
               names_to="subject",values_to="marks")
############################################################
#spread function
data(table2)
spread(table2, key="type", value= "count")
#OR
pivot_wider(table2,names_from = "type",values_from = "count")

#############################################################
table3
separate(table3,col = rate, into = c('cases','pop'),convert = T)
################################################################
table5
#unite(table5, col=c(century,year))
unite(table5, col= whole_year,century,year,sep="")
#################################################################
save.image("28_03_26.RData")
get_wd()

load("27_3_26.RData")
load("26_3_26.RData")


