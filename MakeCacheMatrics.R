makeCacheMatix <- function(x) {
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

