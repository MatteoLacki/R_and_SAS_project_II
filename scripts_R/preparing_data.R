con <- url("http://tofesi.mimuw.edu.pl/~cogito/smarterpoland/Diagnoza2011/diagnozaOsoby2011.RData")

col.names  <- c("Age"
	        ,"Region"
	        ,"Income"
	        ,"Faculty"
	        ,"IsDisabled"
	        ,"SpeakEng"
	        ,"IsUnemp"
	        ,"UnempFreq"
	        ,"UnempDur")

set <- data.frame(2011-diagnozaOsoby2011[,2071],
	          diagnozaOsoby2011[,54],  
	          diagnozaOsoby2011[,937],
	          diagnozaOsoby2011[,1525],
	          diagnozaOsoby2011[,1542],
	          diagnozaOsoby2011[,1530],
	          diagnozaOsoby2011[,2038],
	          diagnozaOsoby2011[,1582],
	          diagnozaOsoby2011[,2044])

attr(set,"names") <- col.names

