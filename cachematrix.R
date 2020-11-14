## Calculates and caches inverse of a matrix
## 

## Assignment 2

makeCacheMatrix <- function(x = matrix()) {
      mainv <- NULL
      set <- function(y) {
            x <<- y
            mainv <<- NULL
      }
      get <- function() x
      setinv <- function(mainv) mainv <<- m
      getinv <- function() m
      list(set = set, get = get,
           setinv = setinv,
           getinv = getinv)
      
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
      ## Return a matrix that is the inverse of 'x'
      mainv <- x$getinv()
      if(!is.null(mainv)) {
            message("getting cached data")
            return(mainv)
      }
      data <- x$get()
      mainv <- solve(data, ...)
      x$setmean(mainv)
      mainv
      
}
