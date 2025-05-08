#################################################################
## CAN FOREIGN AID REDUCE THE DESIRE TO EMIGRATE? ###############
## EVIDENCE FROM A RANDOMIZED CONTROLLED TRIAL ##################
## Simon, Schwartz, and Hudson ##################################
## July 2024 ####################################################
## Replication Script ###########################################
## Table 1 ######################################################
#################################################################

##### Packages
install.packages("tidyverse")
install.packages("vtable")

library(tidyverse)
library(vtable)


##### WIDE DATASET 
mig.wide <- read.csv("mig.wide.csv")

##### Preparing the data
# Making the treatment indicator a factor variable

mig.wide <- mig.wide %>%
  mutate(treat.dum_fac = factor(treat.dum, levels = c(0, 1), labels = c("Control", "Treatment")))


# reducing the dataframe
mig.business <- 
  mig.wide %>%
  dplyr::select(bus.location, bus.open, bus.purchases, bus.hire, bus.profit, bus.close, 
                treat.dum_fac, wt3)

##### Making the table
business.labs <- c("Selected location", "Opened business", "Made purchases",
                   "Hired employees", "Made profit", "Closed business")



st(mig.business, summ=list(c("weighted.mean(x)")), group = "treat.dum_fac", factor.numeric=T, 
   group.test=list(digits=2, star.cutoffs = c(0.1, 0.05, 0.01), star.markers = c("\u2020", "*", "**", "***")),
   numformat= formatfunc(percent = T, nsmall=2), digits=4, group.weights="wt3", labels=business.labs,
   summ.names=list(c("Percent")),
   align = "\u2020 p${<}$0.1; * p${<}$0.05; ** p${<}$0.01", fit.page = '\\textwidth', out = 'latex')





