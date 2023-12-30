library(tidyr)
library(dplyr)
library(ggplot2)
library(readr)
ls.df <- read_csv("C:/Users/meron/Downloads/rstudio assignmnet 1/LaptopSalesJanuary2008.csv/LaptopSalesJanuary2008.csv")


#missing value check 
sum(is.na(ls.df))

#clean missing value 
LaptopSalesJanuary2008_clean <- na.omit(ls.df)

#check the dimension of the data 
dim(LaptopSalesJanuary2008_clean)

#summary 
str(LaptopSalesJanuary2008_clean)
summary(LaptopSalesJanuary2008_clean)

View(LaptopSalesJanuary2008_clean)

#finding the average/mean
store.avg <- aggregate(`Retail Price` ~ `Store Postcode`, data = ls.df, FUN = mean)
store.avg

# Create a bar chart for average retail price by store
ggplot(store.avg, aes(x = `Store Postcode`, y = `Retail Price`)) +
  geom_col() +
  labs(title = 'Average Retail Price by Store', x = 'Store', y = 'Average Retail Price')+
  theme(axis.text.x = element_text(angle = 90)) + coord_cartesian(ylim=c(475, 500))
ggplot(ls.df, aes(x = `Store Postcode`, y = `Retail Price`)) +
  geom_boxplot()+
  theme(axis.text.x = element_text(angle = 90))
       
       
      

