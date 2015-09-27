## Put comments here that give an overall description of what your
## functions do

## Store list of functions that will cache or retrieve a stored matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsove <- function() m
  list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)
}


## Get stored matrix or create matrix that is inverse of x

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting cached inverse matrix")
    return(m)
  }
  data <- x$get()
  m <- solve(data,...)
  x$setsolve(m)
  m
}
