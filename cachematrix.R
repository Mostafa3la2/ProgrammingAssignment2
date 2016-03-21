## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


##this function takes an argument of the type matrix and to set it we must pass a matrix to it, by default the value of the inverse is not calculated yet.
makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y) {
    x <<- y
    s<<- NULL
  }
  get <- function() x
  setSolve <-function(solve) s<<-solve
  getSolve <-function(solve) s
  list(set = set, get = get,
       setSolve = setSolve,
       getSolve = getSolve)
}


## Write a short comment describing this function
##this function checks if the inverse of the matrix has been calculated or not yet , if not it calcuates the inverse and caches the value of it.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		 s<-x$getSolve()
  if(!is.null(s)){
    message("Getting cached data")
    return (s)
    
  }
  data<-x$get()
  s<-solve(data,...)
  x$setSolve(s)
  s
}
