# Load the mtcars dataset
data(mtcars)
print(mtcars$cyl)

# Plot
plot(mtcars$disp, mtcars$mpg, 
     main = "Relationship between MPG and Displacement",
     xlab = "Displacement", 
     ylab = "Miles per Gallon",
     pch = 19, # Solid circles for points
     col = "gray", # We'll overwrite this with cylinder-specific colors
     cex = 1.5) # Slightly larger points

# Add points with colors based on number of cylinders
colors <- c("green", "blue", "red")
for (i in 1:3) {
  cylinder <- c(4, 6, 8)[i]
  points(mtcars$disp[mtcars$cyl == cylinder], 
         mtcars$mpg[mtcars$cyl == cylinder], 
         pch = 19, 
         col = colors[i],
         cex = 1.5)
}

#smooth trend line
smooth <- lowess(mtcars$disp, mtcars$mpg)
lines(smooth, col = "black", lwd = 2)

#legend
legend("topright", 
       legend = c("4 cylinders", "6 cylinders", "8 cylinders"),
       col = colors, 
       pch = 19,
       title = "Number of Cylinders")

#subtitle
mtext("Colored by Number of Cylinders", side = 3, line = 0.5, cex = 0.8)
