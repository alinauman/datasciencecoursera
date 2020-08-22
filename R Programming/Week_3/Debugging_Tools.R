# Diagnosing the Problem
# Warning
x <- log(-1)

printmessage <- function(x){
  if(is.na(x))
    print("x is a missing value!")
  else if(x > 0)
    print("x is greater than zero")
  else
    print("x is less than or equal to zero")
  invisible(x)
}

printmessage(1)
printmessage(NA)
printmessage(x)

# traceback
mean(x)
traceback()

lm(y ~ x)
traceback()

debug(lm)
lm(y ~ x)
