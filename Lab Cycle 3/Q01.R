# Install required packages
install.packages("readr")
install.packages("ggplot2")
install.packages("dplyr")

# Load the libraries
library(readr)
library(ggplot2)
library(dplyr)

# Load the dataset 
house_data <- read.csv("C:/Users/ashfa/VScode/SEM5/R Programming/R_FOR_DATASCIENCE/Lab Cycle 3/house dataset/train.csv")

# Select the relevant columns for analysis
house_data <- house_data %>%
  select(GrLivArea, SalePrice)

# Check for missing values
sum(is.na(house_data))

# Fit a Simple Linear Regression Model
model <- lm(SalePrice ~ GrLivArea, data = house_data)

# View the summary
summary(model)

# Extract the regression coefficients (Intercept and Slope)
coefficients <- coef(model)
intercept <- coefficients[1]
slope <- coefficients[2]

# Print the regression coefficients
cat("Intercept (b0):", intercept, "\n")
cat("Slope (b1):", slope, "\n")

# Plot the Regression Line along with the Scatter Plot
ggplot(house_data, aes(x = GrLivArea, y = SalePrice)) +
  geom_point(color = "blue", alpha = 0.5) +  # Scatter plot of the data
  geom_smooth(method = "lm", se = FALSE, color = "red") +  # Regression line
  labs(title = "House Prices vs Size (Living Area)",
       x = "Size (GrLivArea in Square Feet)",
       y = "Price (SalePrice)") +
  theme_minimal()
