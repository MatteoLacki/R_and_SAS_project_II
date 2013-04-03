
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

x <- Histogram_bez_wypełnienia(Data$Sex, Data)
print(x)

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

hell <- function(set)
{	
	x <- Histogram_bez_wypełnienia( set$Education, set)
	return(x)
}

print(hell(Data))

visualsation_scheme <- function(Set){ 

a <- Poland_Heatmap(as.numeric(Set$Is_Unemployed)-1,"Average frequency of unemployment",3,4)

par(mfrow=c(1,2),cex=0.8)
slices_sex <- c(table(Set$Sex))
lbls_sex <- paste(levels(Set$Sex),"\n",slices_sex,sep="")

b <- pie3D(table(Set$Sex),labels=lbls_sex,theta=0.6,labelcex=1,start=0.5,col=c("blue","green"),explode=0.1,main=" 3D Pie Chart of Sex ")

slices_eng <- c(table(Set$Speaks_English))
lbls_eng <- paste(levels(Set$Speaks_English),"\n",slices_eng,sep="")

c <- pie3D(slices_eng,labels=lbls_eng,theta=0.6,labelcex=1,start=0.5,col=c("blue","green","white"),explode=0.1,main=" 3D Pie Chart of Knowlage of English ")
d <- Histogram_z_wypełnieniem(Data$Speaks_English, Data$Is_Unemployed, Data)
return ( c(a,b,c,d))
}


z <- c("a", 1, hell(Data))

Figure <- function( k )
{
	return( print(Lista_Wykresów[[k]]) )
}

z[[3]]
