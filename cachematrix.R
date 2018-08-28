## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ## Initialize the inverse property
  m <- NULL
  ## Method to set the matrix
  set <- function(y)
  {
    x <<- y
    m <<- NULL
  }
  ## Method the get the matrix
  get <- function() x
  ## Return the matrix 
  ## Method to set the inverse of the matrix
  setInverse <- function(i) m <<- solve(x)
  ## Method to get the inverse of the matrix
  getInverse <- function() m
  ## Return the inverse property
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
    m <- x$getInverse()
  ## Just return the inverse if its already set
  if(!is.null(m))
  {
    return(m)
  }
  ## Get the matrix from our object and calculate the inverse of matrix
  m <- solve(x$get())
  ## Set the inverse to the object
  x$setInverse(m)
  m
        ## Return a matrix that is the inverse of 'x'
}
