# Load the mtcars dataset
data(mtcars)

# Convert gear to a factor because it represents categories
mtcars$gear <- as.factor(mtcars$gear)

# View the first few rows to understand the structure of the dataset
head(mtcars)

# Perform a one-way ANOVA to test if mean disp differs by gear type
anova_result <- aov(disp ~ gear, data = mtcars)

# Summarize the ANOVA test results
summary(anova_result)


# Perform a post-hoc Tukey HSD test
tukey_result <- TukeyHSD(anova_result)
print(tukey_result)
