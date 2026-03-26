
dt  <- as.Date("2026-03-26")
class(dt)
dt1 <-  as.Date("1857-03-13")
class(dt1)
unclass(dt1)#gives serial no of date

dt2 <- as.Date("2026-01-16")
dt2+18

seq(from=as.Date("2025-10-09"),to=as.Date(2025-12-31),length=12)
seq(from=as.Date("2025-10-09"),length=12)
seq(from=as.Date("2026-03-26"),length=4,by="week")

dt4 <- as.Date("26-Mar-2026",format="%d-%b-%Y")
dt4

#####################################################################################
library(lubridate)

dt5 <- dmy("26-Mar-2026")
class(dt5)
dt6 <- dmy("26/6/25")
dt6

dt6 <- mdy("6/26/25")
dt6

month(dt6)
year(dt6)
day(dt6)

month(dt6) <-  11
dt6
######################################################################################

setwd("D:/Student Drive/R/Dataset/Datasets")
orders <- read.csv("Orders.csv")
str(orders)
#changes the format of the date
orders$order.Date <- dmy(orders$Order.Date)
str(orders)


#####################################################################################

