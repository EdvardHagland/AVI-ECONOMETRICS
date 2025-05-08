#################################################################
## CAN FOREIGN AID REDUCE THE DESIRE TO EMIGRATE? ###############
## EVIDENCE FROM A RANDOMIZED CONTROLLED TRIAL ##################
## Simon, Schwartz, and Hudson ##################################
## July 2024 ####################################################
## Replication Script ###########################################
## Figure 3 #####################################################
#################################################################

##### Packages

install.packages("mediation")
install.packages("Hmisc")

library(mediation)
library(Hmisc)


##### WIDE DATASET 
mig.wide <- read.csv("mig.wide.csv")

# making list of mediators
mediators <- Cs(self.suff_w2, efficacy_w2, placeat_w2) 

# list of confounding variables 
confounders <- Cs(age, educ, male, bs.exp.now, bs.exp.past, Score)  

# place holders for output
# short term
m.all.m2y2 <- vector(length(mediators), mode = "list")
names(m.all.m2y2) <- mediators

# long term
m.all.m2y3 <- vector(length(mediators), mode = "list")
names(m.all.m2y3) <- mediators

##### MULTIMEDIATION ANALYSIS 
indices <- 1:length(mediators)

# short term
for (i in 1:(length(mediators))){
  
  indices2 <- indices[-i] # for alternative mediators, must remove the main mediator
  
  
  m.all.m2y2[[mediators[i]]] <- 
    multimed(outcome = "mg.asp_w2", med.main = mediators[i], 
             med.alt = mediators[indices2],
             treat = "treat.dum", covariates = confounders, 
             data = subset(mig.wide, nonmissing2), sims = 1000, 
             weight = "wt2")
  
}

# long term
for (i in 1:(length(mediators))){
  
  indices2 <- indices[-i] # for alternative mediators, must remove the main mediator
  
  
  m.all.m2y3[[mediators[i]]] <- 
    multimed(outcome = "mg.asp_w3", med.main = mediators[i], 
             med.alt = mediators[indices2],
             treat = "treat.dum", covariates = confounders, 
             data = subset(mig.wide, nonmissing3), sims = 1000,
             weight = "wt3")
  
}

##### MAKING THE PLOT 

# preparing the plot
l <- length(mediators)

# Short-term 
m.est.m2y2 <- matrix(NA,l,1) # ACME
m.ci.m2y2 <- matrix(NA,l,2) # CI of ACME 

for(i in 1:l){  
  
  med.tmp <- m.all.m2y2[[i]]
  
  print(summary(med.tmp))
  
  d.ci.lo <- c()
  d.ci.up <- c()
  d.ci.up <- cbind(d.ci.up, med.tmp$d.ave.ci[2, ])
  d.ci.lo <- cbind(d.ci.lo, med.tmp$d.ave.ci[1, ])
  ci <- rbind(d.ci.lo[1,], d.ci.up[1, ])
  m.ci.m2y2[i,] <- ci
  m.est.m2y2[i,] <- med.tmp$d.ave.lb[1]
  
  print(m.est.m2y2[i,]) 
  print(m.ci.m2y2[i,])
}

m.ci.1.m2y2 <- m.ci.m2y2[,1]
m.ci.2.m2y2 <- m.ci.m2y2[,2]


# Long-term

m.est.m2y3 <- matrix(NA,l,1) # ACME
m.ci.m2y3 <- matrix(NA,l,2) # CI of ACME 


for(i in 1:l){  
  
  med.tmp <- m.all.m2y3[[i]]
  
  print(summary(med.tmp))
  
  d.ci.lo <- c()
  d.ci.up <- c()
  d.ci.up <- cbind(d.ci.up, med.tmp$d.ave.ci[2, ])
  d.ci.lo <- cbind(d.ci.lo, med.tmp$d.ave.ci[1, ])
  ci <- rbind(d.ci.lo[1,], d.ci.up[1, ])
  m.ci.m2y3[i,] <- ci
  m.est.m2y3[i,] <- med.tmp$d.ave.lb[1]
  
  print(m.est.m2y3[i,]) 
  print(m.ci.m2y3[i,])
}

m.ci.1.m2y3 <- m.ci.m2y3[,1]
m.ci.2.m2y3 <- m.ci.m2y3[,2]

# Making the ACME plot

y.lab <- c(1,2,3)

jitter<- .15


medlbls <-c("Self-\nsufficiency", "Personal\nefficacy",
            "Financial\nsuccess\nat home")


pdf("ACMEplot.pdf", height = 4, width=3.5)
par(mgp = c(1, 0.5, 0))
plot(m.est.m2y2, y.lab, type="n", ylab ="", xlab = "", 
     yaxt="n", xlim = c(-0.2,0.2),ylim=c(1,3.3), cex.main=.5, cex.axis=0.5)
axis(2, at=y.lab, labels=medlbls, las = 2, cex.axis=0.5)
mtext("ACME",side=1,line=1.5,outer=F, cex = 0.5)
segments(m.ci.1.m2y2,y.lab, m.ci.2.m2y2, y.lab, lty=1)
points(m.est.m2y2, y.lab, pch= 19, cex=.7)

segments(m.ci.1.m2y3, y.lab+jitter, m.ci.2.m2y3, y.lab+jitter, lty=1)
points(m.est.m2y3, y.lab+jitter, pch= 19, cex=.7, col = "white")
points(m.est.m2y3, y.lab+jitter, pch= 1, cex=.7)

abline(v=0)
legend(0.095, 3.4, pch=c(19,1), legend=c("Short-term", "Long-term"), cex =.5, bty = 'n')
mtext("",side=2,outer=TRUE, line=0.5)
dev.off()




