Data  <- read.csv2( file="./data/data.csv")
Censored_Data <- read.csv2( file="./data/data_censored.csv")
  # We neglect the number of the pollee. 
Data  <- Data[,-1]

 #Without these you cannot use GET_FILLED_HISTOGRAM("Unemployment_Spells", "Age") 
  #or GET_FILLED_HISTOGRAM("Unemployment_Spells", "Income") 
#Data$Age <- as.ordered(Data$Age)
#Data$Income <- as.ordered(Data$Income) 
  # With them you cannot use density plots.

names_of_variables  <- colnames(Data)
no_of_variables <- length(names_of_variables)

names_of_variables_without_Unemployment_Spells <- setdiff( names_of_variables, c("Unemployment_Spells", "Unemployment_Frequency"))
names_of_variables_without_Unemployment_Frequency <- setdiff( names_of_variables, c("Unemployment_Spells", "Unemployment_Frequency"))
names_of_variables_without_Unemployment_Spells_and_Frequency <- setdiff( names_of_variables, c("Unemployment_Spells", "Unemployment_Frequency"))

tmp <- Data$Is_Disabled 
Overall_No_of_Handicapss <- length(tmp[tmp == "Low"]) + length(tmp[tmp == "Medium"]) + length(tmp[tmp == "High"])
rm(tmp)
