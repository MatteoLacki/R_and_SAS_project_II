	# Black-and-white histograms created for all possible variables

source("./scripts_R/setting_up_libraries.R")
source("./scripts_R/ancilliary_functions.R")

Data  <- read.csv2( file="./data/data.csv")
Data  <- Data[,-1]

nrow(Data)
Data$Age <- as.ordered(Data$Age)
Data$Income <- as.ordered(Data$Income) 

names_of_variables  <- colnames(Data)
no_of_variables <- length(names_of_variables)

names_of_variables_without_Unemployment_Spells <- setdiff( names_of_variables, c("Unemployment_Spells", "Unemployment_Frequency"))
names_of_variables_without_Unemployment_Frequency <- setdiff( names_of_variables, c("Unemployment_Spells", "Unemployment_Frequency"))
names_of_variables_without_Unemployment_Spells_and_Frequency <- setdiff( names_of_variables, c("Unemployment_Spells", "Unemployment_Frequency"))


colnames(Data)


is.ordered(Data$Age)
summary(Data)

GET_HISTOGRAM("Unemployment_Frequency")
GET_HISTOGRAM("Unemployment_Spells")
GET_HISTOGRAM("Education")
GET_HISTOGRAM("Age")

GET_FILLED_HISTOGRAM("Unemployment_Spells", "Sex") 
GET_FILLED_HISTOGRAM("Unemployment_Spells", "Age") 
GET_FILLED_HISTOGRAM("Unemployment_Spells", "Income") 


ls()
is.factor(Data$Education)

# Making all different histograms that are filled with third variable.
Filled_Histograms	<- HIST_LIST_UNWRAPPED(Data)
ls()
Filled_Histograms[[2]][[2]]
N("Region")
N("Sex")
GET_FILLED_HISTOGRAM("Region", "Sex")
GET_FILLED_HISTOGRAM("Unemployment_Spells", "Sex")

Filled_Histograms[[2]][[4]]

GET_HISTOGRAM("Sex", "Region")

colnames(Data)

  Data_desribing_Unemployment_Frequency <- Data[,names_of_variables_without_Unemployment_Frequency ]
Poisson_Model 		<- glm( Data$Unemployment_Frequency ~ ., data= Data_desribing_Unemployment_Frequency , family=poisson)
Poisson_Big_Summary 	<- summary( Poisson_Model )

Poisson_Big_Summary$coefficients
Poisson_Summary		<- TRANSLATE_RESULTS( Poisson_Big_Summary$coefficients )

Relative_Binary_Change 	<- as.matrix( sapply( Poisson_Summary[,1], RELATIVE_CHANGE), nrows = nrow(Poisson_Summary), ncol=1 )
colnames(Relative_Binary_Change) <- "Effects"

Poisson_Summary		<- cbind(Poisson_Summary, Relative_Binary_Change)
Poisson_Summary
rm( Relative_Binary_Change )
rm( Poisson_Model )


	
#align( Poisson_Summary ) <- "lcccc"

