add2 <- function(x, y) {
    x + y
}


add2(3,4)

above10 <- function(x) {
    use <- x > 10 
    x[use]
}

above <- function(x, n =10) {
    use <- x > n 
    x[use]
} 

columnmean <- function(y) {
    nc <- ncol(y)
    means <- numeric(nc)
    for(i in 1:nc) {
        means[i] <- mean(y[,i])
    }
    means
}


function(y, removeNA = TRUE) {
    nc <- ncol(y)
    means <- numeric(nc)
    for(i in 1:nc) {
        means[i] <- mean(y[,i], na.rm = removeNA)
    }
    means
}



mydata <- rnorm(200)

args (rnorm)

f <- function(a, b) {
    print(a)
    print(b)
}

f(45) # => error b is missing

# using ... 

# to change some arguments of a function
myplot <- function(x, y, type = "1", ...) {
    plot(x, y, type = type, ...)
}

# some functions have ... as first argument, after that partial matching won't work
args(paste) # => function (..., sep = " ", collapse = NULL) 
args(cat)

paste("a", "b", sep = ":")

# symbol detection in R 
# Show all the scopes 
search()
# [1] ".globalEnv" , packages.... 
# order of packages matter 

make.power <- function(n) {
    pow <- function(x) {
        x^n
    }
    pow
}

cube <- make.power(3) # returns a func
cube(2) # => 8 

# to inspect environment
square <- make.power(2)
ls(environment(cube)) # => "n" "pow"

get("n", environment(square))


y <- 10 

f <- function(x) {
    y <-2 
    y^2 +g(x)
}

g <- function(x) {
    x * y 
}

f(3) # => 34 

x <- Sys.time()
x

p <- as.POSIXlt(x)
names(unclass(p))

p$sec

x <- 1:10
if(x >5) {
    x <- 0
}


f <- function(x) {
    g <- function(y) {
        y + z
    }
    z <- 4
    x + g(x)
}

x <- 5
y <- if(x < 3) {
    NA
} else {
    10
}