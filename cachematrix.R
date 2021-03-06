## Put comments here that give an overall description of what your
## functions do
## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
## cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then cacheSolve should retrieve the inverse from the cache.

## Write a short comment describing this function
## Creates a matrix object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set <- function(y){
		x << - y
		m <<- NULL
	}
	get <- function() x
	setmatrix <- function(solve) m <<- solve
	getmatrix <- function() m
	list(set = set, get = get,
		setmatrix = setmatrix,
		getmatrix = getmatrix)
}


## Write a short comment describing this function
## Computes matrix's inverse, if inverse is already caculated & not changed gets inverse from cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	m <- x$getmatrix()
	if(!is.null(m){
		message("getting cached data")
		return(m)
	}
	matrix <- x$get()
	m <- solve(matrix, ...)
	x$setmatrix(m)
	m
}
