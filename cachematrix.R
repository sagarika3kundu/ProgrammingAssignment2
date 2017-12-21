## Put comments here that give an overall description of what your
## functions do

## Caching the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y){
                x <<- y
                m <<- NULL
        }
        get <- function(){
                x        
        }
        setinv <- function(inv){
                m <<- inv
           }
        getinv <- function(){
                m        
        }
        list(set = set, get = get,
             setmean = setinv,
             getmean = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinv()
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        ##using the solve function
        m <- solve(data)
        x$setinv(m)
        m
}
