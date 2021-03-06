#con <- url("http://tofesi.mimuw.edu.pl/~cogito/smarterpoland/Diagnoza2011/diagnozaOsoby2011.RData")

  # Wrzuciłem do data plik z danymi, co by go nie uploadować za każdym razem. 
load("./data/diagnozaOsoby2011.RData")


names_of_variables  <- 
              c(
                  "Age"
                ,"Sex"
                ,"Region"
                ,"Education"
                ,"Is_Unemployed"
                ,"Was_Unemployed"
                ,"Unemployment_Frequency"
                ,"Unemployment_Spells"
              )

	# Preparing data
set <- data.frame(2011-diagnozaOsoby2011[,2071],
                  diagnozaOsoby2011[,51],
                  diagnozaOsoby2011[,54],  
                  diagnozaOsoby2011[,82],
                  diagnozaOsoby2011[,2038],
                  diagnozaOsoby2011[,1581],
                  diagnozaOsoby2011[,1582],
                  diagnozaOsoby2011[,2044])

attr(set,"names") 	<- names_of_variables

levels(set$Sex) 	<- c(NA,"Male","Female")
levels(set$Education) 	<- c(NA,"High","High","High",
                           "Medium","Medium","Medium"
                           ,"Lower","Lower","Lower","Lower","Lower")
  # Czy jest bezrobotny?
levels(set$Is_Unemployed) 	<- c(NA,"Yes","No")

rm( diagnozaOsoby2011 )

write.csv2( set , file="./data/data_censored.csv", col.names = TRUE, row.names = TRUE)
#close(con)

set$Unemployment_Frequency <- sapply(1:nrow(set),
                        function(x) 
                        { 
                          if (is.na(set$Unemployment_Frequency[x]) && ifelse(is.na(set$Was_Unemployed[x]),0,set$Was_Unemployed[x])==2) 0 
                          else set$Unemployment_Frequency[x]  })

  # Jak długo przebywa obecnie na bezrobociu, podane w liczbie miesiący. Przypusz
set$Unemployment_Spells <- sapply(1:nrow(set),
                       function(x) { 
                         if (is.na(set$Unemployment_Spells[x]) && ifelse(is.na(set$Is_Unemployed[x]),"NA",as.character(set$Is_Unemployed[x]))=="No") 0 
                         else set$Unemployment_Spells[x] })

set <- na.omit(set[,-6])
set$Unemployment_Frequency <- ifelse(set$Unemployment_Frequency>3,3,set$Unemployment_Frequency)
write.csv2( set , file="./data/data.csv", col.names = TRUE, row.names = TRUE)

rm("set","names_of_variables")
