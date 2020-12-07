## Put comments here that give an overall description of what your
## functions do

## THe two functions for this assignment include (1) a fucntion that
## generates a matrix and (2) a function that computes tha inverse
## of the matrix

## Write a short comment describing this function
##makeCachematrix generates a matrix caches its inverse

makeCacheMatrix <- function(x = matrix()) {
  a <- NULL
  set <- function(y){
    x <<- y
    a <<- NULL 
  }
  get <- function() x
  setinver <- function(inver)a <<- inver
  getinver <- function() a
  list(set = set, get = get,
       setinver = setinver,
       getinver = getinver)
}


## Write a short comment describing this function
## cacheSolve computes for the inverse of the matrix generated
## by makeCacheMatrix or the inverse of the matrix in the cache

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  a <- x$getinver()
  if (!is.null(a)) {
    message("getting cached data")
    return(a)
  }
  data <- x$get()
  a <- solve(data, ...)
  x$setinver(a)
  a
}
