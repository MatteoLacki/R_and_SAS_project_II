oldpar <- par()
par(mfrow=c(2,1))
plot(density(set$Age,na.rm=TRUE),main="Density plot of Age")
plot(density(set$Income,na.rm=TRUE),main="Density plot of Income")
par <-oldpar