# Reading Data
data <- read.table("foo.txt")
?read.table

# Reading Larger Tables
initial <- read.table("datatable.txt", nrows = 100)
classes <- sapply(initial, class)
tabAll <- read.table("datatable.txt",
                     colClasses = classes)

# Textual Formats
# dput-ting R Objects
y <- data.frame(a = 1, b = "a")
dput(y)
dput(y, file = "y.R")
new.y <- dget("y.R")
new.y

# Dumping R Objects
x <- "foo"
y <- data.frame(a = 1, b = "a")
dump(c("x","y"), file = "data.R")
rm(x,y)
source("data.R")
y
x