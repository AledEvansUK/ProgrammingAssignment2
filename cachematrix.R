
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL # a default setting
	set <- function(y) { # sets the matrix value
	x <<- y # caches the input matrix
	m <<- NULL # sets the the matrix inverse to null
}
get <- function()x
setMatInv <- function(solve) m <<- solve
getMatInv <- function() m
list(set=set, get=get, setMatInv = setMatInv, getMatInv=getMatInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getMatInv()
	if(!is.null(m)){
	message("getting cached data")
	return(m)
}
	matrix <- x$get()
	m <- solve(matrix, ...)
	x$setMatInv(m)
	m
}
