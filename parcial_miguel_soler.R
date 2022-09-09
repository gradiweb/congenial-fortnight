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
install.packages("crosstable")
data(flowers, package = "datasets")
CrossTable(`Method  Payment`, `Day  Purchase`, expected = TRUE)



##4
install.packages("arsenal")
library(arsenal)
df1 = data.frame(flowers)
cost_flowers = df1 %>%
  select(c('Cost.flowers'))
  
df2 = data.frame(flowers)
day_purchase = df2 %>%
  select(c('Day..Purchase'))


comparedf(df1, df2)




##5
data_flowers = data.frame(flowers)
flowers_filter = filter(data_flowers, survived == 0)
cv <- sd(data_flowers) / mean(data_flowers) * 100




##6
install.packages("dplyr")
library(dplyr)
data_table = tail(data.frame(flowers),20)
customer_sex_filter = data_table %>%
  select(c('Customer.Age'))
colMeans(customer_sex_filter)




