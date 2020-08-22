# Subsetting
x <- c("a","b","c","c","d","a")
x[1]
x[2]
x[1:4]
x[x > "a"]

u <- x > "a"
u
x[u]

# Subsetting - Lists
x <- list(foo = 1:4, bar = 0.6)
x[1]

x[[1]]

x$bar

x[["bar"]]
x["bar"]

x <- list(foo = 1:4, bar = 0.6, baz = "Hello")
x[c(1,3)]

name <- "foo"
x[[name]]

x$name

x$foo

x <- list(a = list(10, 12, 14), b = c(3.14,2.81))
x[[c(1, 3)]]

x[[1]][[3]]

x[[c(2, 1)]]

# Subsetting Matrices
x <- matrix(1:6, 2, 3)
x[1, 2]
x[2, 1]

x[1,]
x[,2]

x[1, 2, drop=FALSE]
x[1,]
x[1, , drop=FALSE]

# Subsetting - Partial Matching
x <- list(aardvark = 1:5)
x$a

x[["a"]]

x[["a", exact = FALSE]]

# Subsetting - Removing Missing Values
x <- c(1, 2, NA, 4, NA, 5)
bad <- is.na(x)
x[!bad]

x <- c(1, 2, NA, 4, NA, 5)
y <- c("a", "b", NA, "d", NA, "f")
good <- complete.cases(x, y)
good
x[good]
y[good]