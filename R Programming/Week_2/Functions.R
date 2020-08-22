# Your First R Function
add2 <- function(x, y){
  x + y
}

add2(3, 5)

# Vector Function
above10 <- function(x){
  use <- x > 10
  x[use]
}

above <- function(x, n = 10){
  use <- x > n
  x[use]
}

x <- 1:20
above(x, 12)
above(x)

# Column Mean Function
columnmean <- function(y, removeNA = TRUE){
  nc <- ncol(y)
  means <- numeric(nc)
  for(i in 1:nc){
    means[i] <- mean(y[, i], na.rm = removeNA)
  }
  means
}

columnmean(airquality)

# Argument Matching
mydata <- rnorm(100)
sd(mydata)
sd(x = mydata)
sd(x = mydata, na.rm = FALSE)
sd(na.rm = FALSE, x = mydata)
sd(na.rm = FALSE, mydata)

args(lm)

lm(data = mydata, y ~ x, model = FALSE, 1:100)
lm(y ~ x, data = mydata, 1:100, model = FALSE)

# Lazy Evaluation
f <- function(a, b){
  a^2
}
f(2)

f <- function(a, b){
  print(a)
  print(b)
}
f(45)

# "..." Argument
myplot <- function(a, y, type = "1", ...){
  plot(x, y, type = type, ...)
}

args(paste)

args(cat)

paste("a","b", sep = ":")

paste("a","b", se = ":")