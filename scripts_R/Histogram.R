


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

GET_HISTOGRAM   <- function(Binned_Variable)
{
    return( print(Not_Filled_Histograms[[N(Binned_Variable)]] ))
}

