setwd("/home/matteo/Documents/Scienza/Data_Mining/R_and_SAS/Projekt_II_R_and_S/R_and_SAS_project_II")
source("./scripts_R/setting_up_libraries.R")


Data  <- read.csv2( file="./data/data.csv")
Data  <- Data[,-1]

nrow(Data)

names_of_variables  <- colnames(Data)
no_of_variables <- length(names_of_variables)
source("./scripts_R/ancilliary_functions.R")
names_of_variables



qplot(	Data$Education, 
	data=Data, 
	geom="bar", 
	fill=as.ordered(Data$Unemployment_Spells), 
	position="stack",
	ylab="No of people", 
	xlab="Education") + coord_flip()+ scale_fill_discrete(name="Unemployment Spells")

qplot(	Data$Education, 
	data=Data, 
	geom="bar", 
	fill=as.ordered(Data$Unemployment_Spells), 
	position="stack",
	ylab="No of people", 
	xlab="Education") + coord_flip()+ scale_fill_discrete(name="Unemployment Spells")

qplot( 
        Data$Is_Disabled, 
        data = Data, 
        geom="histogram", 
        ylab="No of people", 
        xlab="Niveau of disability"
      ) + coord_flip()
