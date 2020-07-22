## Put comments here that give an overall description of what your
## functions do

##set the value of the matrix
##get the value of the matrix
##set the value of the mean
##get the value of the mean
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
##gets the inverse of the special matrix created by the above function

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
