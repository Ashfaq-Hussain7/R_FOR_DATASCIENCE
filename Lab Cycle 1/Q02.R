#Caesar Cipher encryption
encrypt <- function(text, s) {
  result <- ""
  
  # Traverse the text
  for (i in 1:nchar(text)) {
    char <- substr(text, i, i)
    
    # Apply transformation
    if (char >= "A" && char <= "Z") {
      new_char <- intToUtf8(((utf8ToInt(char) - utf8ToInt("A") + s) %% 26) + utf8ToInt("A"))
    }
    # Encrypt Lowercase letters
    else if (char >= "a" && char <= "z") {
      new_char <- intToUtf8(((utf8ToInt(char) - utf8ToInt("a") + s) %% 26) + utf8ToInt("a"))
    } else {
      new_char <- char  # Leave other characters unchanged
    }
    
    result <- paste0(result, new_char)
  }
  
  return(result)
}

#Input
text <- readline(prompt = "Enter the text to be encrypted: ")
s <- as.integer(readline(prompt = "Enter the shift value: "))

cat("Text:", text, "\n")
cat("Shift:", s, "\n")
cat("Cipher:", encrypt(text, s), "\n")
