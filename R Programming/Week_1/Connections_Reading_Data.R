# Connections: Interfaces to the Outside World
con <- file("foo.txt", "r")
data <- read.csv(con)
close(con)

# Read Lines Function
con <- gzfile("words.gz")
x <- readLines(con, 10)
x

# Read from Web-Page
con <- url("http://www.jhsph.edu", "r")
x <- readLines(con, 10)
head(x)

