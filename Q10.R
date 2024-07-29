#reverse a list of elements without loop and functions.

myList <- list("FOOTBALL", "BASKETBALL", "CRICKET", "TENNIS", "BADMINTON")

#print before reversing
cat("The list before reversing: ",paste(myList, collapse = ", "))

#using assign function to reverse the list
revList <- myList[c(5,4,3,2,1)]

#print after reversing
cat("The list after reversing: ",paste(revList, collapse = ", "))