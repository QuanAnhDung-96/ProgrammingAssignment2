##ProgrammingAssignment2
##Week3 Assignment GitHub User: QuanAnhDung-96

## This function creates a special "matrix" object that can cache its inverse
## define the argument with default mode of "matrix"
makeCacheMatrix <- function(x = matrix()) {
## initialize y as NULL; will hold value of matrix inverse 
        y <- NULL
 ## define the set function to assign new 
        set <- function(z){
## value of matrix in parent environment
                x <<- z
## if there is a new matrix, reset y to NULL
                y <- NULL
        }
## define the get fucntion
get <- function() x
## assigns value of y in parent environment
        setInverse <- function(inverse) y <<- inverse
## gets the value of y where called
        getInverse <- function() y 
        list(set=set, get=get,
             setInverse=setInverse,
             getInverse=getInverse)
}

## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
        y <- x$getInverse()
        if(!is.null(y)){
                message("getting cached data")
                return(j)
                }
        mat <- x$get()
        y <- solve(mat,...)
        x$setInverse(y)
        y
}
