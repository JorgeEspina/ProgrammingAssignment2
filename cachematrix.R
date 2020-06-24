## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## the makeCacheMatrix function that creates an invertible square array object

makeCacheMatrix <- function(x = matrix()) {
        mat <- NULL
        setMatrix <- function(y){
                x <<- y
                mat <<- NULL
        }
        getMatrix <-function() x
        setMatrixinverse <- function(solve)mat <<- solve
        getMatrixinverse <- function() mat
       
         list(setMatrix = setMatrix,
         getMatrix = getMatrix,
         setMatrixinverse = setMatrixinverse,
         getMatrixinverse = getMatrixinverse)
}



## Write a short comment describing this function
## the cachesolve function stores the inverse of the array
## previously entered in the makeCacheMatrix function
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        mat <- x$getMatrixinverse()
        if (!is.null(mat)) { ##if it is different from null
                ## return matrix inverse
                message("data matrix inverse ")
                return(mat)
        }
        ##calculate your inverse matrix
        matrixinv <-x$getMatrix()
        mat <- solve(matrixinv,...) 
        x$setMatrixinverse(mat)
}
