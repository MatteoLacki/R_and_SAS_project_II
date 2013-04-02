set$IsDisabled <- sapply(set$IsDisabled, function(x) { as.factor(if (is.na(x)) "Not" else x) })
set$UnempFreq <- sapply(1:nrow(set),
function(x) 
{ 
if (is.na(set$UnempFreq[x]) && ifelse(is.na(set$WasUnemp[x]),0,set$WasUnemp[x])==2) 0 
else set$UnempFreq[x]  })

set$UnempDur <- sapply(1:nrow(set),
function(x) { 
if (is.na(set$UnempDur[x]) && ifelse(is.na(set$IsUnemp[x]),"NA",as.character(set$IsUnemp[x]))=="No") 0 
else set$UnempDur[x] })

set <- na.omit(set[,c(1,2,3,4,5,6,7,8,9,11)]))
write.csv2(set,'cleanup.csv',row.names = F)
