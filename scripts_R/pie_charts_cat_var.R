par(mfrow=c(1,2),cex=0.8)
slices_sex <- c(table(Data$Sex))
lbls_sex <- paste(levels(Data$Sex),"\n",slices_sex,sep="")

pie3D(table(Data$Sex),labels=lbls_sex,theta=0.6,labelcex=1,start=0.5,col=c("blue","green"),explode=0.1,main=" 3D Pie Chart of Sex ")

slices_eng <- c(table(Data$Speaks_English))
lbls_eng <- paste(levels(Data$Speaks_English),"\n",slices_eng,sep="")

pie3D(slices_eng,labels=lbls_eng,theta=0.6,labelcex=1,start=0.5,col=c("blue","green","white"),explode=0.1,main=" 3D Pie Chart of Knowlage of English ")
