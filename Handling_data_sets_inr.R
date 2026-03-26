p<- 750000
n<-4
r<-8
si<-p*n*r/100
if(si>100000)
  tax<-si*0.10 else
  tax<-0
paste("Tax =",tax)
View(tax)
#################################

for(i in 1:5)
  print(i*1)

v<-c(9,34,2,10,4,3)
for(r in v)
  print(sqrt(r))

sqrt(v)
###############################

cnt<-1
while(cnt<=4){
  cnt<-cnt+1
  print(cnt)
}

###################################
for(i in 1:6){
  if(i==4) break
  print(i)
}


###################################
setwd("D:/Student Drive/R/Dataset/Datasets")

diab <- read.csv("diabetes.csv")
str(diab)

v<- c("m","f","f","f","m","m")
fv<-factor(v)
fv
as.integer(fv)

unique(diab$location)
diab$location<- factor(diab$location)
diab$location
diab<- read.csv()
View(diab)
as.integer(diab$location)

b<- c(1,2,2,2,1,1,2)
print(v)
print(b)



seq(1,5)
seq(1,10,2)
seq(10,1,-2)

table(diab$location)
table(diab$gender)
t <- table(diab$gender, diab$location)
addmargins(t)
##########################################################

exp(1)
exp(3)

log(20.08554)
##########################################################

marks<-c(23,34,10,20,15,17,19,33,39)
result<- ifelse(marks>=16,"Pass","Fail")
result


marks<- c(23,34,10,20,15,17,19,33,39)
result<- ifelse(marks>=16, "Pass","Fail")
result


######################################################
mean(diab$age)
mean(diab$chol, na.rm = T)

var(diab$chol, na.rm=T)
var(diab$bp.ls, na.rm=T)


sd(diab$chol, na.rm=T)
sd(diab$bp.ls, na.rm=T)

#################################################
summary(diab$chol)
summary(diab$location)
summary(diab)


##############################################
attach(diab)

mean(chol,na.rm=T)
mean(bp.1s, na.rm=T)

var(chol, na.rm = T)

detach(diab)
#################################################

simple_int <- function(p,n,r){
  si<- p*n*r/100
  si
}

simple_int(23000,5,7)

##################################################

p<- c(234000, 90888, 120000)
n<- c(3,5,1)
r<- c(7.5, 9, 6)
simple_int(p,n,r)

##################################################

mean_sd <- function(input){
  mu <- mean(input,na.rm=T)
  sig <- sd(input,na.rm=T)
  list(mean=mu,sd=sig)
}  
mean_sd(diab$chol)

####################################################

Assignments
#1. 
setwd("D:/Student Drive/R/Dataset/Datasets")
ord<- read.csv("Orders.csv")
View(ord)
#a
str(ord)
#b
summary(ord)
####################################################

#3.
temp <- function(f){
  (f-32)*(5/9)
}

t=temp(100)
t

temp(c(100,106,140,130))

#####################################################

#5
input<- c(9.34,8.24,NA,1.345,0.56,0,NA,7.89)
ImputeMean <- function(input) {
  mu<- mean(input, na.rm=T)
  ifelse(is.na(input),mu,input)
}

ImputeMean(input)

ImputeMean(diab$bp.ld)
