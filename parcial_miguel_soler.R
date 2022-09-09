## 1
install.packages("readxl")
library("readxl")
flowers <- read_excel("/Users/soler/Documents/personal/usta/exploratory/parcial/parcial/Clientes-Flores_clean.xlsx")
View(flowers)
attach(flowers)

##2
as.factor(`Method  Payment`)
as.factor(`Day  Purchase`)


##3


##4


##5


##6
install.packages("dplyr")
library(dplyr)
data_table = tail(data.frame(flowers),20)
customer_sex_filter = data_table %>%
  select(c('Customer.Age'))
colMeans(customer_sex_filter)




