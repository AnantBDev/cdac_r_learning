#Connecting to mysql
library(RMysql)
#connection string
mydb = dbConnect(MySQL(), user='root', password='bda123',
                 dbname='world', host='localhost')
#Lists tables in the database
dbListTables(mydb)

#selects the city table
dbListFields(mydb, 'city')

#result set
rs = dbSendQuery(mydb, "Select * from city")

data= fetch(rs,n=-1)

data
View(data)
#clears the result set
dbClearResult(rs)
#Disconnects from the db
dbDisconnect(mydb)

#############################################################################################################################

library(XML)
#XML is a format of storing data



setwd("D:/Student Drive/R/Dataset/Datasets")
document <-xmlTreeParse("foods.xml",useInternalNodes= TRUE)

rootNode <- xmlRoot(document)
xmlName(rootNode)

names(rootNode)
class(rootNode)

rootNode[[1]]
names(rootNode[[1]])
rootNode[[1]][["price"]]

foods <- xmlToDataFrame(document)
foods
###############################################################################################################################
setwd("D:/Student Drive/R/Dataset/Datasets")

library(jsonlite)
jsonData <- fromJSON("contacts.txt")
class(jsonData)
names(jsonData)


jsonData$phoneNumber
class(jsonData$phoneNumber)
jsonData$phoneNumber$number


mt_JSON <- toJSON(mtcars)
mt_JSON

mt_DS <- fromJSON(mt_JSON)
mt_DS

item_json <- 
###############################################################################################################################
install.packages("mongolite")
library(mongolite)


# Basic connection syntax
con <- mongo(
  collection = "book",
  db = "test",
  url = "mongodb://localhost:27017", # Replace with your Atlas URI if using Cloud
  verbose = TRUE
)

data_view <- con$find(query = '{}')
data_view

json_data <- con$export(file = NULL)
my_flat_df <- fromJSON(json_data, flatten = TRUE)
my_flat_df

