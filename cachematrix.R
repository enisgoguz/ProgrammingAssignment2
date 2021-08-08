## Caching the inverse of a matrix 

## The followig codes are used to create a matrix object which can cache the inverse of it

makeCacheMatrix <- function(j = matrix()) {

}
 ## Starting the inverse property
    k <- NULL

    ## Method to set the matrix
    setMatrix <- function( matrix ) {
            j <<- matrix
            k <<- NULL
    }

    ## Required method to obtain our matrix 
    getMatrix <- function() {
        j ##returns the matrix
    }

    ## Required method for inversing the matrix
    setMatrixInverse <- function(inverse) {
        k <<- inverse
    }

    ## Method to get the inverse of the matrix
    getMatrixInverse <- function() {
        k ## returns the inversed item
    }

    ## Returning the list of methods
    list(set = set, get = get,
         setInverse = setMatrixInverse,
         getInverse = getMatrixInverse)
}




cacheSolve <- function(x, ...) {

 j <- x$getMatrixInverse()

 
    if( !is.null(j) ) {
            message("cached data is getting obtained")
            return(j)
    }

    ## Obtaining the matrix from the object
    data <- x$get()

    ## With matrix multiplication, we calculate the inverse 
    j <- solve(data) %*% data

    ## Finally, we ascribe the inverse to our object and return the matrix
    x$setInverse(j)

    j

}
