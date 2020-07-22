## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
      x <<- y
      m <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse)invr<<-inverse
    getinverse <- function() invr
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)

}


## Write a short comment describing this function

  cacheSolve <- function(x, ...) {
    invr <= x$getinverse()
    if(!is.null(invr)) {
      message("Getting Cached Data:-")
      return(invr)
    }
    matrx <- x$get()
    invr <- solve(matrx, ...)
    x$setinverse(invr)
    invr
  }
        ## Return a matrix that is the inverse of 'x'
}
