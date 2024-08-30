#load dataset
data("mtcars")

print(mtcars$mpg)

#calculating mean and SD
mpg_mean <- mean(mtcars$mpg)
mpg_sd <- sd(mtcars$mpg)

#creating shades
blue_shades <- colorRampPalette(c("lightblue", "darkblue"))(10)

#histogram plot
v <- mtcars$mpg

hist(v, main = "Histogram on MPG", xlab = "Miles Per Gallon", 
     ylab = "Frequency", col = blue_shades, border = "black", breaks = 10 )

# Add a box around the plot
box()

# Add text for mean and standard deviation
text_x <- par("usr")[2] * 0.7  # 70% of the way across x-axis
text_y <- par("usr")[4] * 0.9  # 90% of the way up y-axis
text(text_x, text_y, 
     sprintf("Mean: %.2f\nSD: %.2f", mpg_mean, mpg_sd),
     pos = 4)

# Add a vertical line for the mean
abline(v = mpg_mean, col = "red", lwd = 2, lty = 2)
abline(v = mpg_sd, col = "green", lwd = 2, lty = 2)
