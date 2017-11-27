## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Set the value of the matrix
## Get the value of the matrix
## Set the value of the inversed matrix
## Get the value of the inversed matrix
makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y){
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinverse <- function(solve) m <<- solve
    getinverse <- function() m
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)

}


## Write a short comment describing this function
## Calculate the inverse of the matrix. It first checks
## to see if the inversion is already done. If so, it 
## gets the answer and skips the computation. Otherwise,
## it does the calculate.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getinverse()
    if(!is.null(m)){
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    m
}

