Data  <- read.csv2( file="./data/data.csv")
Censored_Data <- read.csv2( file="./data/data_censored.csv")
  # We neglect the number of the pollee. 
Data  <- Data[,-1]
colnames(Data)
names_of_variables  <- 
  c(
    "Age"
    ,"Sex"
    ,"Region"
    ,"Income"
    ,"Education"
    ,"Is_Disabled"
    ,"Speaks_English"
    ,"Is_Unemployed"
    ,"Was_Unemployed"
    ,"Unemployment_Frequency"
    ,"Unemployment_Spells"
  )
  

no_of_variables <- length(names_of_variables)

names_of_variables_without_Unemployment_Spells <- setdiff( names_of_variables, c("Unemployment_Spells", "Unemployment_Frequency"))
names_of_variables_without_Unemployment_Frequency <- setdiff( names_of_variables, c("Unemployment_Spells", "Unemployment_Frequency"))
names_of_variables_without_Unemployment_Spells_and_Frequency <- setdiff( names_of_variables, c("Unemployment_Spells", "Unemployment_Frequency"))

