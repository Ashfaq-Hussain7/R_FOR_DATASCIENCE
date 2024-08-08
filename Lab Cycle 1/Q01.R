#operations on a paragraph
print("Enter a paragraph: ")
para <- readline()

noOfWords <- function(para) {
  split <- strsplit(para, " ")
  cat("The total number of words in the given paragraph is: ", sapply(split, length))
}

avgLength <- function(para){
  words <- strsplit(para, "\\s+")[[1]]
  wordLength <- nchar(words)
  meanOfWords <- mean(wordLength)
  cat("The average length of the words in the paragraph is: ",meanOfWords)
}

longestWord <- function(para){
  words <- strsplit(para, "\\s+")[[1]]
  wordLength <- nchar(words)
  longest <- max(wordLength)
  
  longIndex <- which(wordLength == longest)
  longWord <- words[longIndex]
  
  cat("The longest word in the para is: ",longWord, "with length: ", longest)
}

replaceWord <- function(para){
  words <- strsplit(para, "\\s+")[[1]]
  cat("Enter the word to replace: ")
  oldWord <- readline()
  cat("Enter the new word: ")
  newWord <- readline()
  
  replacedWords <- ifelse(words == oldWord, newWord, words)
  newPara <- paste(replacedWords, collapse = " ")
  
  cat("The paragraph after replacing '", oldWord, "' with '", newWord, "' is:\n", newPara)
}

replaceWord(para)

longestWord(para)

noOfWords(para)

avgLength(para)