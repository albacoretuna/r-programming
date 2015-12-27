
## lapply, apply funciton on input and return a list 
x <- list(a = 1:5, b = rnorm(10))
x
str(x$b)
summary(x)

lapply(x, mean)

lapply(x, summary)

x <- list(a = 1:4, b = rnorm(10), c = rnorm(20, 1), d = rnorm(100, 5))
x
lapply(x, mean)

### random number generator, runif 
runif(3)

x <- 1:4
lapply(x, runif)

lapply(x, runif, min = 0, max = 10)
sapply(x, runif)
### anonymous functions 

x <- list(a = matrix(1:4, 2,2), b = matrix(1:6, 3,2))
x
lapply(x, function(elt) elt[1,])

### sapply
#sapply is like lapply but tries to simplify the reply from list to vectors
sapply(x, function(elt) elt[1,])


# quiz

library(datasets)
data(iris)
str(iris)
summary(iris)
iris
virginica_col <- iris[which(iris$Species == "virginica"),]
nrow(virginica_col)
mean(virginica_col$Sepal.Length, na.rm = TRUE)

# returns a vector of the means of the variables 'Sepal.Length', 'Sepal.Width', 'Petal.Length', and 'Petal.Width'
apply(iris[, 1:4], 2, mean)

library(datasets)
data(mtcars)

str(mtcars)
summary(mtcars)

# average miles per gallon (mpg) by number of cylinders in the car (cyl)?
tapply(mtcars$mpg, mtcars$cyl, mean)


# Absolute difference between the average horsepower of 4-cylinder cars
# and the average horsepower of 8-cylinder cars
x <- tapply(mtcars$hp, mtcars$cyl, mean)
x['8'] - x['4']



debug(ls)

# swirl
library("swirl")
swirl()
