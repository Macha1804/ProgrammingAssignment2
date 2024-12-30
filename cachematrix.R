## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
if(!is.matrix(mat)) {stop("L'entrée doit être une matrice.")}
f <- NULL
set <- function(y) {
  mat <<- y
  f <<- NULL
}
get <- function() x {
setcache <- function(solve) f <<- inverse
getcache <- function () f
list(set = set,get = get, setcache = setcache, getcache = getcache)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        f <- x$getcache()
        if(!is.null(f)){
          message('getting cached data')
          return(f)
        }
        data <- x$get()
        f <- solve(data)
        x$setcache(f)
        f
}
