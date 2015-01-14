## These two functions allow you to keep track of a matrix and keep a 
## cache of its inverse so that you don't have to calculate it repeatedly

## makeCacheMatrix returns a list that allows you to access a stored matrix
## and access its inverse, which is either cached or calculated as necessary

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(y){
    x <<- y
    inverse <<- NULL
  }
  get <- function() x
  setInverse <- function(newInverse) inverse <<- newInverse
  getInverse <- function() inverse
  
  list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}


## Returns the cached inverse of the stored matrix or calculates and returns
## it if it hasn't been cached already

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse <- x$getInverse()
  if(!is.null(inverse)){
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  inverse <- solve(data)
  x$setInverse(inverse)
  inverse
}
