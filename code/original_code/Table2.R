#################################################################
## CAN FOREIGN AID REDUCE THE DESIRE TO EMIGRATE? ###############
## EVIDENCE FROM A RANDOMIZED CONTROLLED TRIAL ##################
## Simon, Schwartz, and Hudson ##################################
## July 2024 ####################################################
## Replication Script ###########################################
## Table 2 ######################################################
#################################################################

##### Packages
install.packages("stargazer")

library(stargazer)

##### Options
options(digits=3)


##### LONG DATASET 
mig.long <- read.csv("mig.long.csv")


## between subjects 

# wave 2
asp.w2 <- lm(mg.asp ~ treat.dum + factor(Region), data=subset(mig.long, wave==2 & nonmissing2), weights=wt2)
summary(asp.w2)

# wave 3
asp.w3 <- lm(mg.asp ~ treat.dum + factor(Region), data=subset(mig.long, wave==3 & nonmissing3), weights=wt3)
summary(asp.w3)

## diff-in-diffs

# wave 2
asp.did.w2 <- lm(mg.asp ~ treat.dum*post.dum + factor(Region), data=subset(mig.long, wave!=3 & nonmissing2), weights=wt2)
summary(asp.did.w2)

# wave 3
asp.did.w3 <- lm(mg.asp ~ treat.dum*post.dum + factor(Region), data=subset(mig.long, wave!=2 & nonmissing3), weights=wt3)
summary(asp.did.w3)


stargazer(asp.w2, asp.did.w2, asp.w3, asp.did.w3, title="Effect of program on the aspiration to migrate",
          align = TRUE, omit = "Region",
          column.labels=c("Wave 2","Baseline to W2", "Wave 3", "Baseline to W3"),
          covariate.labels=c("Treat assignment","Post-treatment", "Treat x Post"),
          omit.stat=c("LL","ser","f"), no.space=T,
          star.char = c("\u2020", "*", "**", "***"),
          star.cutoffs = c(0.1, 0.05, 0.01),
          notes = c("\u2020 p${<}$0.1; * p${<}$0.05; ** p${<}$0.01"), 
          notes.append = F)

