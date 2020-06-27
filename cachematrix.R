
## Put comments here that give an overall description of what your
## functions do


makeCacheMatrix <- function(x = matrix()) {
  
  ## This function creates a special "matrix" object that can cache its inverse
  
  inverse1 <- NULL
  set <- function(y){
    x <<- y
    inverse1 <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) inverse1 <<- inverse
  getInverse <- function() inverse1
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  ## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
  ## If the inverse has already been calculated (and the matrix has not changed),
  ## then cacheSolve will retrieve the inverse from the cache
  
  inverse1 <- x$getInverse()
  if(!is.null(inverse1)) {
    message("getting cached data")
    return(inverse1)
  }
  data <- x$get()
  inverse1 <- solve(data, ...)
  x$setInverse(inverse1)
  inverse1
}