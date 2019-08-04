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

