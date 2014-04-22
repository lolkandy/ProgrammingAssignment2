
rm(list=ls())
setwd("C:/Users/Lori/Documents/coursera/DA")

## makeCacheMatrix() and cacheSolve() create and cache a matrix and its inverse.


## Takes the matrix function as an arguement to create special matrix "x".
## Creates a list of 4 functions to:
## set and get the value of the matrix, and set and get the value of its inverse.

makeCacheMatrix <- function(x = matrix()) {

         i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) i <<- solve
        getinverse <- function() i
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)

}


## Takes an arguemnt of special matrix "x," created by makeCacheMatrix.
## Calculates and caches the inverse of "x" if it is not already cached; returns inverse.

cacheSolve <- function(x, ...) {

        i <- x$getinverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
        
}
