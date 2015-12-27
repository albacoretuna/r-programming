pdf("xh.pdf")
hist(rnorm(1000))
dev.off()

data

mean(Nile)
sd(Nile)

data()

hist(Nile)
hist(Nile, breaks=10)

oddcount <- function(x) {
  k <- 0 
  for ( n in x) {
      if(n %% 2 == 1) {
          k <- k+1  
      } 
  }
  return(k)
}

oddcount(1:417)

# super asignment
y <- 4 
add <- function(x) {
    y <<- 5
    x + y 
}

add(3)

x <- 8
x[1]

y <- "abc"
mode(y)