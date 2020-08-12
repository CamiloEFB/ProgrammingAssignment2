

## Creates a matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
              m<- NULL
        set <- function(matrix){
          m<<- NULL
          x<<- matrix
        } 

        get <- function(){ 
                m
        }
        
        setinverse<- function(inverse){
          m<<- inverse
        }
        getinverse<- function(){
          m
        }
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse) 
 }


## Compute the inverse of thematrix returned by "makeCacheMatrix"

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

        inv<- x$getinverse()
        
        if(!is.null(inv)){
          
          message("getting cached inverse")
          return(inv)
        }
          data <- x$get()
          inv<- solve(data,...)
          x$setinverse(inv)
         
          inv
  }



