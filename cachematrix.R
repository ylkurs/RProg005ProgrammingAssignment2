## Put comments here that give an overall description of what your
## functions do

## Creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(mat = matrix()) {
	matinv <- NULL
	set <- function(matinput) {
			mat <<- matinput
			matinv <<- NULL
	}
	get <- function() mat
	setinv <- function(inverse) matinv <<- inverse
	getinv <- function() matinv
	list(set = set, 
		get = get,
		setinv = setinv,
		getinv = getinv)
}


## Compute the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), 
## then retrieve the inverse from the cache.

cacheSolve <- function(x, ...) { 
	matinv <- x$getinv()
	if(!is.null(matinv)) {
		message("getting cached data")
		return(matinv)
	}
    mat <- x$get()
    matinv <- solve(mat, ...)
    x$setinv(matinv)
	## Return a matrix that is the inverse of 'x'
    matinv
}
