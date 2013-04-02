liczba.brakow <- function(x,set){
  sum(ifelse(is.na(set[,x]),1,0))
} 
NA.NUM <- sapply(col.names,liczba.brakow,set=set)
xtable(as.data.frame(NA.NUM),digits=0,caption="Number of NA values in particular variables")
