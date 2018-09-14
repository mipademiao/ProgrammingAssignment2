## Put comments here that give an overall description of what your
## functions do

## This function makes the cache to store the matrix
makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(x) {
        m <<- x;
        i <<- NULL;
    }
    get <- function() return m
    setinverse <- function(inverse) i <<- inverse;
    getinverse <- function() i
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## This function makes the chache matrix soleved 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- m$getinverse()
        if(!is.null(i)) {
            message("Getting cached data")
            return(i)
        }
        data <- m$get()
        i <- solve(data, ...)
        m$setinverse(i)
        i
}
