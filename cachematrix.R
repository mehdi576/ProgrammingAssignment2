## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
invr <- NULL                 ##setting the invr as NULL
set <- function (y) {        ##defining the set function
	x <<- y              ##value of matrix in parent
	invr <<- NULL        ##if new matrix,reset to NULL
}

get <- function() x          ##defining get function - returning value of mat arg

setinverse <- function(inverse) invr <<- inverse  ##assigning value of invr
getinverse <- function() invr                     ##getting value of invr
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse) ##for referring to the function with $operator
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
invr <- x$getinverse()
if(!is.null(invr)) {
	message("getting cached data")
	return(inv)
}
data <- x$get()
invr <- solve(data, ...)
x$setinverse(invr)
invr
}
