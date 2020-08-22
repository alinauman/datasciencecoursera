# Scoping Rules - Symbol Binding
lm <- function(x){ x * x }
lm

f <- function(x, y){
  x^2 + y / z
}

# Functions inside a Function
make.power <- function(n){
  pow <- function(x){
    x^n
  }
  pow
}

cube <- make.power(3)
square <- make.power(2)
cube(3)
square(2)

ls(environment(cube))
get('n', environment(cube))

ls(environment(square))
get('n', environment(square))

# Lexical vs Dynamic Scooping
y <- 10

f <- function(x){
  y <- 2
  y^2 + g(x)
}

g <- function(x){
  x*y
}

f(3)

g <- function(x){
  a <- 3
  x+a+y
}

y <- 3
g(2)

# Optimization Example
make.NegLoglik <- function(data, fixed=c(FALSE,FALSE)){
  params <- fixed
  function(p){
    params[!fixed] <- p
    mu <- params[1]
    sigma <- params[2]
    a <- -0.5*length(data)*log(2*pi*sigma^2)
    b <- -0.5*sum((data-mu)^2) / (sigma^2)
    -(a+b)
  }
}


set.seed(1); normals <- rnorm(100, 1, 2)
nLL <- make.NegLoglik(normals)
nLL
function(p){
  params[!fixed] <- p
  mu <- params[1]
  sigma <- params[2]
  a <- -0.5*length(data)*log(2*pi*sigma^2)
  a <- -0.5*sum((data-mu)^2) / (sigma^2)
  -(a + b)
}

ls(environment(nLL))

optim(c(mu = 0, sigma = 1),nLL)$par

nLL <- make.NegLoglik(normals, c(FALSE,2))
optimize(nLL, c(-1,2))$minimum

nLL <- make.NegLoglik(normals, c(1, FALSE))
optimize(nLL, c(1e-6, 10))$minimum

nLL <- make.NegLoglik(normals, c(1, FALSE))
x <- seq(1.7, 1.9, len = 100)
y <- sapply(x, nLL)
plot(x, exp(-(y-min(y))),type = '1')