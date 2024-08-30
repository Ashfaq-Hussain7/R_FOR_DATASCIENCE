#import iris dataset.
data("iris")

png(filename = "Q01_output.png", width = 1920, height = 1080, res = 300)

x <- iris$Sepal.Length

y <- iris$Petal.Length

#scatter plot 
plot(x, y, xlab = "Sepal Length", ylab = "Petal Length", main = "Observation of Sepal and Petal Length", col = "purple", lwd = 2)

dev.off()
getwd()
setwd("C:/Users/ashfa/VScode/SEM5/R Programming/R_FOR_DATASCIENCE/Lab Cycle 2")