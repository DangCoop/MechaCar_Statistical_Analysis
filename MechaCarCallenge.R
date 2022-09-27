################## Deliverable 1 ################## 

#load packages
library(dplyr)
library(tidyverse)
#Import and read csv file as a DataFrame
car <- read.csv(file="MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)
#Check column names
colnames(car)
#Linear regression model 
lm (mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = car)
#summary statistics
summary(lm (mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = car))

################## Deliverable 2 ################### 

#Import and read csv file as a DataFrame
coil <- read.csv(file="Suspension_Coil.csv", check.names=F, stringsAsFactors=F)
head(coil)
#Create summary table with summarize()
total_summary <- coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
#Create summary table with group_by()
lot_summary <- coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

################## Deliverable 2 ################### 

#t-test for all manufacturing lots with pop mu = 1,500 psi
t.test(coil$PSI, mu=1500)
#t-test for Lot1 
t.test(subset(coil$PSI, coil$Manufacturing_Lot == "Lot1"), mu=1500)
#t-test for Lot2
t.test(subset(coil$PSI, coil$Manufacturing_Lot == "Lot2"), mu=1500)
#t-test for Lot3
t.test(subset(coil$PSI, coil$Manufacturing_Lot == "Lot3"), mu=1500)
















