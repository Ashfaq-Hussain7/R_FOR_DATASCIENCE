#Examples of plot() function.

plot(1,3)

plot(c(1,8),c(3,10))

plot(c(1,2,3,4,5),c(3,7,8,9,12))

x <- c(1,2,3,4,5)
y <- c(3,7,8,9,12)

plot(x,y,type = "l",col = "red")

plot(1:10)

plot(1:10, main = "My graph", xlab = "The x-axis", ylab = "The y-axis", col = "blue", pch= 8, cex = 2)

plot(10:1, main = "My graph", xlab = "The x-axis", ylab = "The y-axis", col = "lightblue",type = "l", lwd= 5)

#multiple line plotting
line1 <- c(1,2,3,4,5,10)
line2 <- c(2,5,7,8,9,10)

plot(line1, type = "l", col = "blue", lwd = 5)
lines(line2, type= "l", col = "red", lwd = 5)

x <- c(5,7,8,7,2,2,9,4,11,12,9,6)
y <- c(99,86,87,88,111,103,87,94,78,77,85,86)

plot(x,y, main = "Observation of Cars", xlab = "Car age", ylab = "Car speed", col = "purple", lwd = 3)



#pie charts
x <- c(10,20,30,40,30)
pie(x)
pie(x, init.angle = 90)

mylabel <- c("Apples", "Bananas", "Cherries", "Dates", "Orange")

colors <- c("green", "yellow", "red", "black", "orange")

pie(x, label= mylabel, main = "Fruits", col = colors)

legend("bottomright", mylabel, fill =colors) 


#bar graph
x <- c("A", "B", "C", "D")
y <- c(2, 4, 6, 8)

barplot(y, names.arg = x, col = "lightblue")

barplot(y, names.arg = x, col= "purple", horiz = TRUE) #horizontal



#histogram - frequency of occurance
v <- c(9,13,21,8,36,22,12,41,31,33,19)

hist(v, xlab = "Weight", col= "green", border= "red")

hist(v, xlab = "weight", col= "pink", border= "blue", xlim = c(0,40), ylim = c(0,3), breaks = 5, lwd = 5)


#boxplot
input <- mtcars[,c('mpg','cyl')]
boxplot(mpg ~ cyl, data = mtcars, xlab = "Number of Cylinders", ylab = "Miles per Gallon", main = "Mileage Data", col = "darkgreen")


