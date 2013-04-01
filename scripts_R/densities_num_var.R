attach(set)
par(mfrow=c(2,1))
plot(density(Age,na.rm=TRUE),main="Density plot of Age")
plot(density(Income,na.rm=TRUE),main="Density plot of Income")
