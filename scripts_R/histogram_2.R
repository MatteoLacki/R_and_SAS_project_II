
Histogram_bez_wypełnienia <- function( Zmienna_na_histogram, Data )
{
	return(
      		qplot( 
        		Zmienna_na_histogram, 
       			data = Data, 
		        geom="histogram", 
		        ylab="No of people", 
		        xlab="") + coord_flip()
    	) 
}

Histogram_bez_wypełnienia(Data$Sex, Data)


Histogram_bez_wypełnienia <- function( Zmienna_na_histogram, Data )
{
	tmp <-  eval(	parse(
					text = 	paste(
							Data,
							"$",
							Zmienna_na_histogram, 
							sep=""
						)
				)
			)
	Data <- eval(parse(text = Data))

	return(
      		qplot(  tmp, 
       			data = Data, 
		        geom="histogram", 
		        ylab="No of people", 
		        xlab="") + coord_flip()
    	) 
}

Histogram_bez_wypełnienia("Sex", "Data")

paste(	"Data", "$", "Sex", sep="")

class(eval(parse(text = "Data")))

Data
