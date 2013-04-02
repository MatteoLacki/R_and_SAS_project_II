# con <- url("http://tofesi.mimuw.edu.pl/~cogito/smarterpoland/Diagnoza2011/diagnozaOsoby2011.RData")

  # Wrzuciłem do data plik z danymi, co by go nie uploadować za każdym razem. 
load("./data/diagnozaOsoby2011.RData")

data <- read.csv2

col.names  <- c("Age"
                ,"Sex"
                ,"Region"
                ,"Income"
                ,"Education"
                ,"IsDisabled"
                ,"SpeakEng"
                ,"IsUnemp"
                ,"UnempFreq"
                ,"UnempDur")

set 		<- data.frame(
			2011-diagnozaOsoby2011[,2071],
	    	        diagnozaOsoby2011[,51],
	                diagnozaOsoby2011[,54],  
                  	diagnozaOsoby2011[,585], #937
	                diagnozaOsoby2011[,82],
                  	diagnozaOsoby2011[,1542],
                  	diagnozaOsoby2011[,1530],
                  	diagnozaOsoby2011[,2038],
                  	diagnozaOsoby2011[,1582],
                  	diagnozaOsoby2011[,2044]
			)

rm(	diagnozaOsoby2011	)

attr(set,"names")   	<- col.names
levels(set$Sex)     	<- c(NA,"Male","Female")
levels(set$SpeakEng)	<- c(NA,"Actively","Passively","Not")
levels(set$Education) 	<- c(NA,"AboveDoc","Master","Bachel",
                           "Vacational","Vacational","Sxecondary"
                           ,"Vacational","Lower","Lower","Lower","NA")

write.csv2( set , file="./data/data.csv")