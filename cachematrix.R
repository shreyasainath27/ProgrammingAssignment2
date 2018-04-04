## Put comments here that give an overall description of what your
## functions do

## function to set and get the matrix, set and get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  # stores the  matrix
  setMatrix <- function(newValue) {
    x <<- newValue
    cache <<- NULL
  }
  
  # returns the stored matrix
  getMatrix <- function() {
    x
  }
  
  # cache the inverse
  cacheInverse <- function(solve) {
    cache <<- solve
  }
  
  # get the cached value of the inverse
  getInverse <- function() {
    cache
  }
  
  list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
}


## Write a short comment describing this function## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
        
  # get the cached value
  inverse <- y$getInverse()
  # if a cached value exists return it
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  # if it is not already there, caclulate the inverse and store it inthe cache
  
  data <- y$getMatrix()
  inverse <- solve(data)
  y$cacheInverse(inverse)
  
  # return the inverse
  inverse
}
