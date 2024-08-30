#load dataset
data("mtcars")

#colors and points
carb_colors <- colorRampPalette(c("blue", "red"))(max(mtcars$carb))
point_sizes <- mtcars$carb * 0.6  # Adjust multiplier for desired size range

#scatter plot
plot(mtcars$wt, mtcars$disp, 
     main = "Relationship between Weight and Displacement",
     xlab = "Weight (1000 lbs)", 
     ylab = "Displacement (cu.in.)", 
     col = carb_colors[mtcars$carb], 
     pch = 19,
     cex = point_sizes)

# Add a smooth line to show the trend
smooth <- lowess(mtcars$wt, mtcars$disp)
lines(smooth, col = "cornflowerblue", lwd = 2)

# Add legend
legend("topleft", 
       legend = paste(1:max(mtcars$carb), "carb"), 
       col = carb_colors, 
       pch = 19, 
       pt.cex = 1:max(mtcars$carb) * 0.5,  # Adjust multiplier for legend point sizes
       title = "Number of Carburetors",
       cex = 0.8)

# Add a box around the plot
box()