#load mtcars dataset
data("mtcars")

# Convert am and cyl to factors
mtcars$am <- factor(mtcars$am, labels = c("Automatic", "Manual"))
mtcars$cyl <- factor(mtcars$cyl)

# Create a table of counts
cyl_am_table <- table(mtcars$cyl, mtcars$am)

# Create the bar plot
barplot(cyl_am_table, beside = TRUE, col = c("skyblue", "orange"),
        main = "Number of Cylinders in Cars by Transmission Type",
        xlab = "Number of Cylinders", ylab = "Count")

# Add a legend
legend("topright", legend = c("Automatic", "Manual"), fill = c("skyblue", "orange"))