# Theses two functions help the user cache computations that would 
#normally take more time than ususal to calculate. This usually works
# with very long vectors, so these two functions can cache the value 
# of the matrix then later solve it.

# The purpose of this function is to create a matrix that sets the value
# of the matrix which later gets the value of the matrix. It then sets
# it in a list. 

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
get <- function() x
setmatrix <- function(solve) m <<- solve
getmatrix <- function() m
list(set=set, get=get,setmatrix=setmatrix,getmatrix=getmatrix)
}


## What this function does is that it solves the matrix from the 
# previous function. 

cacheSolve <- function(x = matrix(), ...) {
  m <- x$getmatrix()
    if(!is.null(m)) {
      message ("grabbing cached data")
      return(m)
    }
  matrix <- x$get()
  m <- solve(matrix, ...)
  x$setmatrix(m)
  m
}
