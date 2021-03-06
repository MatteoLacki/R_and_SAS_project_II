mapa<-readShapePoly("./data/POL_adm/POL_adm1.shp")


Poland_Heatmap <- function(Set,variable,title,num_breaks,prec=0) {

  Set$Region <- factor(Set$Region, levels = sort(levels(Set$Region)))
  levels(Set$Region) <- sort(levels(mapa$VARNAME_1))
  Set$wojewodztwo <- factor(Set$Region, levels = levels(mapa$VARNAME_1))
  
  
  mean.variable <- sapply(levels(Set$Region), function(x) mean(variable[Set$Region == x]))
  
  mapa$mean.variable <- sapply(mapa$VARNAME_1, function(x) mean.variable[x])
  
  if(prec>0){
    min_var <- round(min(mean.variable),digits=prec)
    max_var <- round(max(mean.variable),digits=prec)
    
  }
  else{
    min_var <- floor(min(mean.variable))
    max_var <- ceiling(max(mean.variable))
  }
  breaks <- round(seq(min_var, max_var,(max_var-min_var)/num_breaks),digits=prec)
  
  colours <- brewer.pal(num_breaks, "Blues")
  
  map_legend <- leglabs(breaks)
  
  par(xpd=TRUE)
  plot(mapa, col=colours[findInterval(mapa$mean.variable, breaks, all.inside=TRUE)], axes=F, bty='L')
  legend(x="bottom", inset=0, legend=map_legend, 
         fill=colours, cex=0.7, title=title, horiz=TRUE)
}


#Poland_Heatmap(Data$Income,"Average Income in PLN",5)

#Poland_Heatmap(Data$Unemployment_Frequency,"Average frequency of unemployment",4,2)

#Poland_Heatmap(Data,Data$Unemployment_Spells,"Average unemployment duration in months",4,1)

#mode(Poland_Heatmap(Data,as.numeric(Data$Is_Unemployed)-1,"Average frequency of unemployment",3,4))
