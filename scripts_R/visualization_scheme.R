visualsation_scheme <- function(Set,pref){ 

png(file=paste("./data/",pref,"heatmap.png",sep=""))
Poland_Heatmap(as.numeric(Set$Is_Unemployed)-1,"Average frequency of unemployment",3,4)
dev.off()

png(file=paste("./data/",pref,"pie1.png",sep=""))
slices_sex <- c(table(Set$Sex))
lbls_sex <- paste(levels(Set$Sex),"\n",slices_sex,sep="")
pie3D(table(Set$Sex),labels=lbls_sex,theta=0.6,labelcex=1,start=0.5,col=c("blue","green"),explode=0.1,main=" 3D Pie Chart of Sex ")
dev.off()


slices_eng <- c(table(Set$Speaks_English))
lbls_eng <- paste(levels(Set$Speaks_English),"\n",slices_eng,sep="")
png(file=paste("./data/",pref,"pie2.png",sep=""))
pie3D(slices_eng,labels=lbls_eng,theta=0.6,labelcex=1,start=0.5,col=c("blue","green","white"),explode=0.1,main=" 3D Pie Chart of Knowlage of English ")
dev.off()

png(file=paste("./data/",pref,"hist.png",sep=""))
Histogram_z_wypełnieniem(Data$Speaks_English, Data$Is_Unemployed, Data)
dev.off()
return (0)
}

z <- visualsation_scheme(Data,"test_")
cond_visualization_scheme <- function(set,var){
levels_var <- levels(var)
sapply(1:length(levels_var),function(x)
  {
    sapply(1:length(var),function(y) {
                                    ifelse(var)
    }
                                    )
   
   })  
}