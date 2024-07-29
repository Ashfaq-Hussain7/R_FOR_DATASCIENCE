#password generation.

generatePassword <- function(length) {
  upperCase <- LETTERS
  lowerCase <- letters
  digits <- 0:9
  specialChars <- c("!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "-", "_", "=", "+", "[", "]", "{", "}", "|", ";", ":", "'", "\"", ",", ".", "<", ">", "/", "?")
  
  # Combine 
  allChars <- c(upperCase, lowerCase, digits, specialChars)
  
  # One character from each set
  password <- c(
    sample(upperCase, 1),
    sample(lowerCase, 1),
    sample(digits, 1),
    sample(specialChars, 1)
  )
  
  # Fill the rest of the password length with random characters from all sets
  if (length > 4) {
    password <- c(password, sample(allChars, length - 4, replace = TRUE))
  }
  
  # Shuffle the password to mix the characters
  password <- sample(password)
  
  # Convert the password to a single string
  password <- paste(password, collapse = "")
  
  return(password)
}


length <- as.integer(readline(prompt = "Enter the desired length of the password: "))


if (length < 4) {
  cat("Password length should be at least 4 characters.\n")
} else {
  password <- generatePassword(length)
  cat("Generated password:", password, "\n")
}
