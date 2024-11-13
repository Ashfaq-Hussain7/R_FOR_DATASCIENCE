# Load the mtcars dataset
data(mtcars)

# View the first few rows of the dataset to understand its structure
head(mtcars)

# Calculate the Pearson correlation coefficient between hp and mpg
correlation_coefficient <- cor(mtcars$hp, mtcars$mpg, method = "pearson")
print(paste("Pearson Correlation Coefficient between hp and mpg:", correlation_coefficient))

# Perform a Pearson correlation test
correlation_test <- cor.test(mtcars$hp, mtcars$mpg, method = "pearson")
print(correlation_test)
