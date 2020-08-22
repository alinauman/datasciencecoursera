# Dates in R
x <- as.Date("1970-01-01")
x
unclass(x)
unclass(as.Date("1970-02-02"))

# Times in R
x <- Sys.time()
x
unclass(x)
x$sec # Error

p <- as.POSIXlt(x)
names(unclass(p))
p$sec

datestring <- c("January 10, 2012 10:40", "December 9, 2011 9:10")
x <- strptime(datestring, "%B %d, %Y %H:%M")
x

class(x)