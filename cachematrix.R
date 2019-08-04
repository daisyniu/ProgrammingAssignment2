##The function is to set the data, get the data, set the inverse of the matrix and get the inverse of the matrix
## And also set the cache pointer to Null if new data is set
makeCacheMatix <- function(x=matrix()) {
        xinverse <- NULL
        set <- function(y) {
                x <<- y
                xinverse <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse)  xinverse<<- inverse
        getinverse <- function() xinverse
        list(set = set, get = get,
             setinverse =setinverse,
             getinverse = getinverse)
}
##
##
##The function is to check if the cache is available, otherwise will calculate the inverse of the matrix
cachesolve <- function(x, ...) {
        xinverse <- x$getinverse()
        if(!is.null(xinverse)) {
                message("getting cached data")
                return(xinverse)
        }
        data <- x$get()
        xinverse <- solve(data, ...)
        x$setinverse(xinverse)
        xinverse
}
