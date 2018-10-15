
attach(mtcars)
View(mtcars)
#4 figures arranged in 2 rows and 3 columns
par(mfrow = c(2, 3))

plot(wt, mpg, main = "Scatterplot of wt vs. mpg")
plot(wt, disp, main = "Scatterplot of wt vs disp")
hist(wt, main = "Histogram of wt")
boxplot(wt, main = "Boxplot of wt")
boxplot(mpg, main = "Boxplot of mpg")
pie(am)


layout(matrix(c(1, 1, 2, 3), 2, 2, byrow = TRUE))
plot(wt, mpg, main = "Scatterplot of wt vs. mpg")
plot(wt, disp, main = "Scatterplot of wt vs disp")
hist(wt, main = "Histogram of wt")