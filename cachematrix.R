# Theses two functions help the user cache computations that would 
#normally take more time than ususal to calculate. This usually works
# with very long vectors, so these two functions can cache the value 
# of the matrix so it can later solve it.
 
# The purpose of this function is to create a matrix that sets the value
# of the matrix which then later gets the value of the matrix. It then sets
# sets the inverse and gets the inverse.   
 
makeCacheMatrix <- function(x = matrix()) { # setting the function
  m <- NULL                                 
  set <- function(y) {
    x <<- y                                # <<- assining value to an
    m <<- NULL                             # object
  }
get <- function() x                        # getting the matrix here
setmatrix <- function(solve) m <<- solve   # setting its inverse
getmatrix <- function() m                  # getting its inverse
list(set=set, get=get,setmatrix=setmatrix,getmatrix=getmatrix)
} #function list
 

## What this function does is that it solves the matrix from the 
  matrix <- x$get()
  m <- solve(matrix, ...)
  x$setmatrix(m)
  m
# previous function. If the result is already in the previous function.
# then it will take it from the cache. 
 
cacheSolve <- function(x = matrix(), ...) { # setting function
  m <- x$getmatrix()                        # gets the cache 
    if(!is.null(m)) {                       # if the cache is there
      message ("grabbing cached data")      # it will return a 
                                            # message
      return(m)                              
    }                                        
  matrix <- x$get()                         # if no cache exists
  m <- solve(matrix, ...)                   # gets the matrix 
  x$setmatrix(m)                            # calculates the inverse
  m                                         # caches it and returns the inverse
}
 