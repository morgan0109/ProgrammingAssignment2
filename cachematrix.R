## Put comments here that give an overall description of what your
## functions do
##This function is used for caching the inverse of a matrix
## Write a short comment describing this function
##This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
    m<-NULL
    set<-function(y){
      x<<-y 
      m<<-NULL
    }
    get<-function() x
    setM<-function(solve) m<<-solve
    getM<-function() m
    list(set=set,get=get,setM=setM,getM=getM)
  
}


## Write a short comment describing this function
##This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
cacheSolve <- function(x, ...) {
    m <- x$getM()
    if(!is.null(m)){
      message("TO cached data")
      return(m)
    }
    data <- x$get()
    m <- solve(data,...)
    x$setM(m)
    m
        ## Return a matrix that is the inverse of 'x'
}
