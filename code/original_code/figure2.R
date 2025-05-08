#################################################################
## CAN FOREIGN AID REDUCE THE DESIRE TO EMIGRATE? ###############
## EVIDENCE FROM A RANDOMIZED CONTROLLED TRIAL ##################
## Simon, Schwartz, and Hudson ##################################
## July 2024 ###################################################
## Replication Script ###########################################
## Figure 2 #####################################################
#################################################################

##### Packages

install.packages("Hmisc")

library(Hmisc)


##### WIDE DATASET 
mig.wide <- read.csv("mig.wide.csv")


##### CALCULATING TREATMENT EFFECTS ON THE MEDIATORS

### Wave 2
# list of mediators

meds.w2 <- Cs(self.suff_w2, efficacy_w2, placeat_w2)

# holding place for output: W2
medout.w2 <- vector(length(meds.w2), mode = "list")
names(medout.w2) <- meds.w2

# Running the regressions

for (i in 1:(length(meds.w2))){
  
  modelformula <- paste(meds.w2[i],"~ treat.dum + factor(Region)")
  print(modelformula)
  
  medout.w2[[meds.w2[i]]] <- eval(substitute(lm(.modelformula, data=subset(mig.wide, nonmissing2), 
                                            weights=wt2), 
                                         list(.modelformula = modelformula)))
  
  print(summary(medout.w2[[meds.w2[i]]]))
  
}



### Wave 3
# list of mediators

meds.w3 <- Cs(self.suff_w3, efficacy_w3, placeat_w3)

# holding place for output: W3
medout.w3 <- vector(length(meds.w3), mode = "list")
names(medout.w3) <- meds.w3

# Running the regressions

for (i in 1:(length(meds.w3))){
  
  modelformula <- paste(meds.w3[i],"~ treat.dum + factor(Region)")
  print(modelformula)
  
  medout.w3[[meds.w3[i]]] <- eval(substitute(lm(.modelformula, data=subset(mig.wide, nonmissing3), 
                                                weights=wt3), 
                                             list(.modelformula = modelformula)))
  
  print(summary(medout.w3[[meds.w3[i]]]))
  
}


##### CREATING THE PLOT

# place holders 
cis.w2 <- matrix(NA,length(meds.w2),2)
b.w2 <- matrix(NA,length(meds.w2),1)
cis.w3 <- matrix(NA,length(meds.w3),2)
b.w3 <- matrix(NA,length(meds.w3),1)

# populating wave 2
for (i in 1:length(meds.w2))
{
  b.w2[i] <- medout.w2[[i]]$coefficients[2]
  print(medout.w2[[i]]$coefficients[2])
  ci <- confint(medout.w2[[i]])
  #print(ci)
  lb <- ci[2,1]
  ub <- ci[2,2]
  cis.w2[i,] <- cbind(lb,ub)
}

# populating wave 3
for (i in 1:length(meds.w3))
{
  b.w3[i] <- medout.w3[[i]]$coefficients[2]
  print(medout.w3[[i]]$coefficients[2])
  ci <- confint(medout.w3[[i]])
  #print(ci)
  lb <- ci[2,1]
  ub <- ci[2,2]
  cis.w3[i,] <- cbind(lb,ub)
}


# preparing the plot
y.lab <- seq(from = 1, to=length(meds.w2),by=1)
vnames <-c(self.suff_w2 = "Self-\nsufficiency",
           efficacy_w2 ="Personal\nefficacy",
           placeat_w2 = "Financial\nsuccess\nat home")


meds.w2

jitter <-  0.15

# Making the plot
pdf("TtoM.pdf", height=4, width=3.5)
par(mgp = c(1, 0.5, 0))
plot(b.w2, y.lab, type="n", ylab ="", xlab = "", yaxt="n", 
     xlim = c(-0.3,1), ylim=c(1,3.3), cex.main=0.5, cex.axis=0.5)
axis(2, at=y.lab, labels=vnames, las = 2, cex.axis=0.5)
mtext("Difference in means",side=1,outer=F, cex = 0.5, line=1.5)
points(b.w2, y.lab, pch= 19, cex=.8, col = "black")
segments(cis.w2[,1], y.lab, cis.w2[,2], y.lab, lty=1, col = "black")

points(b.w3, y.lab+jitter, pch= 19, cex=.8, col = "white")
points(b.w3, y.lab+jitter, pch= 1, cex=.8)
segments(cis.w3[,1], y.lab+jitter, cis.w3[,2], y.lab+jitter, lty=1, col = "black")
abline(v=0)
legend(0.65, 3.4, pch=c(19,1), legend=c("Short-term", "Long-term"), cex =.5, bty = 'n')
#mtext("",side=2,outer=TRUE)
dev.off()



