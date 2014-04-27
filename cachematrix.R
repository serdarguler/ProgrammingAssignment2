## Put comments here that give an overall description of what your
## functions do

# The makeCacheMatrix object is implemented to store a matrix and its inverse in the cache

# The cacheSolve is implemented to create and solve the inverse of the matrix cached my the makeCacheMatrix function

## Write a short comment describing this function

# This function:
#     stores the matrix x into cache 
#     sets the cache variable inverse to null
#     returns the cached matrix 

makeCacheMatrix <- function(x = matrix()) {
  
  cachedMatrix <<-x
  
  inverse <<- NULL
  
  
  cachedMatrix
  
}


## Write a short comment describing this function

# this function:
#     checks if the given matrix and the cached matrix is identical (if they are not it will return null)
#     then checks is the inverse of the matrix is cached (if yes, it will return it from the cache)
#     if the inverse id not cached it writes the inverse into cache and returns the inverse of the matrix

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'

    if(sum(x!=cachedMatrix)>0){
      message("Cached matrix and the matrix given is not identical")
      return(NULL)
    }
  
  if(!is.null(inverse)) {
    message("Matrix is stored in the cache")
    return(inverse)
  }
  
  inverse <<- solve(x)
  inverse
  
}
