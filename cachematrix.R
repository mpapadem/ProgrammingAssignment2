# this function works like a class, it creates a list
# that contains 4 member functions: set, get, setInv
# and getInv. it uses <<- assignment operator so that
# these internal variables are not exposed to the
# outside environment. 



makeCacheMatrix <- function(x = matrix()){
        
        i <- NULL # this is where the result of inversion is stored
        set function(y){
                x <<- y
                i <<- NULL # initializes i to NULL
        }
        
        get <- function() x # return the input matrix
        setInv <- function(inv) i <<- inv # set the inverse matrix
        getInv <- function() inv # return the inverse matrix
        # return a list consisting of the above 4 functions so that
        # x <- makeCacheMatrix(testM)
        # x$set(newM) to change matrix
        # x$get to get the matrix which was set previously
        # x$setInv to set the inverse of the matrix
        # x$getInv to get the inverse of a matrix
        list(set = set, get = get,
             setInv = setInv,
             getInv = getInv)
}
        


cacheSolve <- function(x,...){
        i <- x$getInv() # get the inverse of a matrix from object x
        if(!is.null(m)){ # if the inverse is there
                message("getting cached data")
                return(i) # return the calculated inverse
        }
        data <- x$get() # if not, then get the matrix object and slove it
        m <- solve(data,...)
        x$setInv(i) # set it to the object and return the solved result
        i
}
        
        
}
