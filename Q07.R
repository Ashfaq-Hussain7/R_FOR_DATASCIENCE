#Twisted Fibonacci Series

fibonacci <- function(limit){
  limit <- as.integer(limit) 
  
  if (is.na(limit) || limit <= 0) {
    cat("Please enter a positive integer.\n")
    return()
  }
  
  first <- 0
  second <- 1
  third <- 1
  
  cat("The Fibonacci Series: ")
  
  if (limit == 1){
    cat(first)
  }
  else if (limit == 2){
    cat(first, second)
  }
  else if (limit == 3){
    cat(first, second, third)
  }
  else{
    cat(first, second, third, " ")
    for (i in 4:limit){
      next_num <- first + second + third
      cat(next_num, " ")
      first <- second
      second <- third
      third <- next_num
    }
  }
  cat("\n")
}

limit <- readline(prompt = "Enter the limit of Fibonacci Series: ")
fibonacci(limit)