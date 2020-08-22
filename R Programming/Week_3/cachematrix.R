## Matrix Inversion
## A costly computation and calculating it repeatedly is not an ideal scenarion. 
## Thus, we will be caching the inverse of a matrix

## makeCacheMatrix - Create a matrix object which will cache the inverse

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  # Set the value of the matrix
  set <- function(y){
    x <<- y
    m <<- NULL 
  }
  # Get the value of the matrix
  get <- function() x
  # Set the value of the inverse
  setinverse <- function(inverse) m <<- inverse
  # Get the value of the inverse
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Compute the inverse of the matrix
## If the inverse has already been calculated, then 
## it should get the inverse from the cache

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
