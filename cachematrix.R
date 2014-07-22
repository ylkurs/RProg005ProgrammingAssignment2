## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        
	matinv <- x$getinv()
	if(!is.null(matinv)) {
		message("getting cached data")
		return(matinv)
	}
    mat <- x$get()
    matinv <- solve(mat, ...)
    x$setmean(matinv)
	## Return a matrix that is the inverse of 'x'
    matinv
}
