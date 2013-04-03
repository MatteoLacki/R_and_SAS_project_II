setwd("/home/matteo/Documents/Scienza/Data_Mining/R_and_SAS/Projekt_II_R_and_S/R_and_SAS_project_II")
source("./scripts_R/setting_up_libraries.R")


Data  <- read.csv2( file="./data/data.csv")
Data  <- Data[,-1]

nrow(Data)

names_of_variables  <- colnames(Data)
no_of_variables <- length(names_of_variables)
source("./scripts_R/ancilliary_functions.R")
names_of_variables


is.ordered(Data$Is_Disabled)
W <- Data$Is_Disabled
ordered(Dat)

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

W <- 

qplot( 
        factor(Data$Is_Disabled, c("Not", "Low", "Medium", "High")), 
        data = Data, 
        geom="histogram", 
        ylab="No of people", 
        xlab="Niveau of disability"
      ) + coord_flip()


W <- factor(Data$Is_Disabled, c("Not", "Low", "Medium", "High"))
W <- W[W != "Not"]
W <- factor(W, c("Not", "Low", "Medium", "High"))
 
qplot(	factor(Data$Is_Disabled, c("Not", "Low", "Medium", "High")), 
	data=Data, 
	geom="bar", 
	fill=as.ordered(Data$Unemployment_Spells), 
	position="stack",
	ylab="No of people", 
	xlab="Education") + coord_flip()+ scale_fill_discrete(name="Unemployment Spells")
 tmp <- Data$Is_Disabled 
  Overall_No_of_Handicaps <- length(tmp[tmp == "Low"]) + length(tmp[tmp == "Medium"]) + length(tmp[tmp == "High"])
Overall_No_of_Handicaps

qplot( 	factor(Data$Speaks_English, c("Not", "Passively", "Actively")), 
        data = Data, 
        geom="histogram", 
        ylab="No of people", 
        xlab="Speaks English"
      ) + coord_flip()

qplot(	factor(Data$Speaks_English, c("Not", "Passively", "Actively")), 
	data=Data, 
	geom="bar", 
	fill=as.ordered(Data$Unemployment_Spells), 
	position="stack",
	ylab="No of people", 
	xlab="Speaks English") + coord_flip()+ scale_fill_discrete(name="Unemployment Spells")

qplot(	Data$Education, 
	data=Data, 
	geom="bar", 
	fill=as.ordered(Data$Unemployment_Spells), 
	position="stack",
	ylab="No of people", 
	xlab="Education") + coord_flip()+ scale_fill_discrete(name="Unemployment Spells")


# plot on the re-ordered variables (Team2) (middle panel)
 
