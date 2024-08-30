#load dataset
data("mtcars")
print(mtcars$hp)
print(mtcars$gear)


#box plot
boxplot(hp ~ gear, data = mtcars, main = "Horsepower Distribution by Number of Gears ", 
        xlab = "Number Of Gear", ylab = "Horse Power", col = "blue")

# Add points with different shapes for each gear
points(jitter(rep(1, sum(mtcars$gear == 3)), factor = 1), mtcars$hp[mtcars$gear == 3], pch = 16)
points(jitter(rep(2, sum(mtcars$gear == 4)), factor = 1), mtcars$hp[mtcars$gear == 4], pch = 17)
points(jitter(rep(3, sum(mtcars$gear == 5)), factor = 1), mtcars$hp[mtcars$gear == 5], pch = 18)

# Add a legend
legend("topleft", legend = c("3 gears", "4 gears", "5 gears"),
       pch = c(16, 17, 18), title = "Number of Gears")


# Identify outliers
for (i in unique(mtcars$gear)) {
  hp_subset <- mtcars$hp[mtcars$gear == i]
  Q1 <- quantile(hp_subset, 0.25)
  Q3 <- quantile(hp_subset, 0.75)
  IQR <- Q3 - Q1
  outliers <- hp_subset[hp_subset < (Q1 - 1.5 * IQR) | hp_subset > (Q3 + 1.5 * IQR)]
  
  if (length(outliers) > 0) {
    outlier_indices <- which(mtcars$gear == i & mtcars$hp %in% outliers)
    text(rep(i, length(outliers)), outliers, 
         labels = rownames(mtcars)[outlier_indices],
         pos = 4, cex = 0.8, col = "red")
  }
}

# Add a box
box()