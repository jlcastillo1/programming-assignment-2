## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  Inverse <- NULL
  set <- function(y) { #it defined de function for the matrix
    x <<- y
    Inverse <<- NULL
  }
  get <- function(x) { #it defined the output (matrix)
    x
  }
  setInverse <- function(inv){ #setting the matrix inverted
    Inverse <<- inv
  }
  getInverse <- function() { #define the returning matrix
    Inv
  }
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  i <- x$getInverse()
  if (!is.null(i)) { #IF checks if the inverse matrix existes
    message("getting cached data")
    return(i)
  }
  data <- x$get() #if not, calculated the matrix (using makeCacheMatrix)
  i <- solve(data, ...)
  x$setinverse(i)
  i
}
