#validate age
validateAge <- function() {
  age <- as.integer(readline(prompt = "Enter age: "))
  while (is.na(age) || age <= 0) {
    cat("Invalid age. Please enter a positive integer.\n")
    age <- as.integer(readline(prompt = "Enter age: "))
  }
  return(age)
}

#validate grade
validateGrade <- function() {
  grade <- readline(prompt = "Enter grade (A, B, C, D, F): ")
  while (!(grade %in% c("A", "B", "C", "D", "F"))) {
    cat("Invalid grade. Please enter a valid letter grade (A, B, C, D, F).\n")
    grade <- readline(prompt = "Enter grade (A, B, C, D, F): ")
  }
  return(grade)
}

# Function to read and validate student records
readStudentRecords <- function() {

  studentNames <- list()
  studentAges <- list()
  studentGrades <- list()
  
  numStudents <- as.integer(readline(prompt = "Enter the number of students: "))
  
  for (i in 1:numStudents) {
    cat("Enter details for student", i, "\n")
    
    # Read student name
    name <- readline(prompt = "Enter name: ")
    
    # Validate age
    age <- validateAge()
    
    # Validate grade
    grade <- validateGrade()
    
    # Store valid data
    studentNames <- c(studentNames, name)
    studentAges <- c(studentAges, age)
    studentGrades <- c(studentGrades, grade)
  }
  
  # Calculate and display average age
  if (length(studentAges) > 0) {
    averageAge <- mean(unlist(studentAges))
    cat("Average age of students with valid records:", averageAge, "\n")
  } else {
    cat("No valid student records to calculate average age.\n")
  }
}


readStudentRecords()
