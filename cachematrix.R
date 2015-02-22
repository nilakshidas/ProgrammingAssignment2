## Assignment 2

makeCacheMatrix <- function(x = matrix()) {
  ## assigning null to the value m which will cache the inverse of the matrix
m <- NULL
set <- function(y){
  x <<- y ## is used to replace the x in this environment
  m <<- NULL ## m is reassigned to Null, so that the inverse is recalculated with the new x
}
get <- function() x ## to get the latest value of the x
setinverse <- function(solve) m <<- solve ## takes the latest value of the inverse and assigns it to m, so that the function knows that m is calculated
getinverse <- function () m
list (set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
m <-x$getinverse()
if(!is.null(m)){
  message("getting cached data")
  return (m)
}
data <-x$get()
m<- solve(data)
x$setinverse(m)
m
}