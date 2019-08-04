
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

