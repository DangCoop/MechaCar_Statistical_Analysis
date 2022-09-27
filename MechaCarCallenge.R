library(dplyr)
library(tidyverse)

car <- read.csv(file="MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)
colnames(car)

lm (mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = car)
summary(lm (mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = car))
