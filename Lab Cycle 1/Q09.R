#run length encoding.

encode <- function(string) {
  size <- nchar(string)
  encodedString <- ""
  
  i <- 1
  while (i <= size) {
    count <- 1
    
    while (i < size && substr(string, i, i) == substr(string, i + 1, i + 1)) {
      count <- count + 1
      i <- i + 1
    }
    
    encodedString <- paste0(encodedString, substr(string, i, i), count)
    i <- i + 1
  }
  
  return(encodedString)
}

string <- readline(prompt = "Enter a String that needs to be Encoded: ")
result <- encode(string)
cat("The Encoded String is:", result, "\n")
