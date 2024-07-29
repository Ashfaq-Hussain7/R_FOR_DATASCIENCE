#printing a certain series.

printSeries <- function(limit){
  limit <- as.integer(limit)
  
  sum <- 0
  
  for (i in 1:limit ){
    
    term <- i /( (2 * i) - 1)
    
    if (i %% 2 == 0){
      sum <- sum - term
    }
    else{
      sum <- sum + term
    }
  }
  return(sum)
}

#input
limit <- readline(prompt = "Enter a limit for the series: ")

total <- printSeries(limit)

cat("The Sum of the Series for ",limit," terms is: ", total)