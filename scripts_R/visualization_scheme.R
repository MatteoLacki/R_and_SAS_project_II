visualsation_scheme <- function(Set,pref){ 

  
png(file=paste("./data/",pref,"heatmap.png",sep=""))
Poland_Heatmap(Set,Set$Unemployment_Spells,"Average unemployment duration in months",4,1)
dev.off()

png(file=paste("./data/",pref,"pie1.png",sep=""))
slices_sex <- c(table(Set$Unemployment_Frequency))
lbls_sex <- paste(c("Never","x1","x2","x3"),"\n",slices_sex,sep="")
pie3D(table(Set$Unemployment_Frequency),labels=lbls_sex,theta=1,labelcex=0.8,start=5
      ,col=c("blue","green","pink","white"),explode=0.3,main=" 3D Pie Chart of Number of Times on Unemployment")
dev.off()

png(file=paste("./data/",pref,"hist.png",sep=""))
print(Histogram_z_wypełnieniem(Set$Age, Set$Is_Unemployed, Set))
dev.off()

return (0)
  
}


#visualsation_scheme(Data,"test_")

cond_visualization_scheme <- function(set,var){
  levels_var <- levels(var)
my_cut <-   function(x){ 
    print(visualsation_scheme(set[(var==x) ,],x)) }
  vectors <- lapply(levels_var,my_cut)
}

#cond_visualization_scheme(Data,Data$Education)