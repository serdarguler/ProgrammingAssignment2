## Put comments here that give an overall description of what your
## functions do

## The makeCacheMatrix object is implemented to store a matrix and its inverse in the cache

## The cacheSolve is implemented to solve the cache created by 

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  cachedMatrix <<-x
  
  inverse <<- NULL
  
  
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  if(!is.null(inverse)) {
    message("Matrix is stored in the cache")
    return(inverse)
  }
  
  inverse <<- solve(x)
  inverse
  
}
