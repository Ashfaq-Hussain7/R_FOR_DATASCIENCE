#Program to check whether a string is palindrome.

reverseString <- function(inputString){
  # Split 
  splitString <- strsplit(inputString, NULL)[[1]]
  
  # Reverse 
  reversedString <- rev(splitString)
  
  # Collapse 
  outputString <- paste(reversedString, collapse = "")
  
  if (inputString == outputString){
    cat("The given string" , outputString,  "is a Palindrome")
  }
}

inputString <- readline(prompt = "Enter a string: ")
reverseString(inputString)