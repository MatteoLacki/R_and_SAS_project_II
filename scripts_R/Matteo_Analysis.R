	# Black-and-white histograms created for all possible variables

Not_Filled_Histograms <- 
	lapply(
		names_of_variables, 
		function(x)
		{ 
			qplot( 
				eval(parse(text = x)), 
				data = Data, 
				geom="histogram", 
				ylab="No of people", 
				xlab=gsub("_", " ", x)
			) + coord_flip()
		}	
	)

Not_Filled_Histograms[[5]]

ls()
is.factor(Data$Education)



# Making all different histograms that are filled with third variable.
Filled_Histograms	<- HIST_LIST_UNWRAPPED(Data)


Poisson_Model 		<- glm( Cigarettes_Daily ~ ., data=Data_for_Modelling, family=poisson)
Poisson_Big_Summary 	<- summary( Poisson_Model )
Poisson_Summary		<- TRANSLATE_RESULTS( Poisson_Big_Summary$coefficients )

Relative_Binary_Change 	<- as.matrix( sapply( Poisson_Summary[,1], RELATIVE_CHANGE), nrows = nrow(Poisson_Summary), ncol=1 )
colnames(Relative_Binary_Change) <- "Effects"

Poisson_Summary		<- cbind(Poisson_Summary, Relative_Binary_Change)

rm( Relative_Binary_Change )
rm( Poisson_Model )


	
#align( Poisson_Summary ) <- "lcccc"

