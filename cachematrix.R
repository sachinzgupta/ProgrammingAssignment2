## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
# Set and get the inverted square matrix
        m = NULL
        set = function(y) {
                x <<- y        
                m <<- NULL
        }
        get = function() x
        setinver <- function(inver1) m <<- inver1
        getinver <- function() m
        list(set = set, get = get,
             setinver = setinver,
             getinver = getinver)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        #Inverting the square matrix 
        m <- x$getinver()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinver(m)
        return(m)
}