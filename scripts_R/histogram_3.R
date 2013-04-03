Histogram_z_wypełnieniem <- function( Zmienna_na_histogram, Zmienna_wypelniajaca ,Data )
{
	return(
	qplot(	Zmienna_na_histogram, 
		data=Data, 
		geom="bar", 
		fill=Zmienna_wypelniajaca, 
		position="stack",
		ylab="No of people", 
		xlab="") + coord_flip()+ scale_fill_discrete(name="Unemployment Spells")
	)
}


Histogram_z_wypełnieniem(Data$Education, Data$Sex, Data)

lapply(  )
