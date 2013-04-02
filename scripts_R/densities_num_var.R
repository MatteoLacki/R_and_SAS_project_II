oldpar <- par()
par(mfrow=c(2,1))
plot(density(Data$Age,na.rm=TRUE),main="Density plot of Age")
plot(density(Data$Income,na.rm=TRUE),main="Density plot of Income")
par <-oldpar