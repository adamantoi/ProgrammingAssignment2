## Put comments here that give an overall description of what your
## functions do
## The script has two functions, makeCacheMatrix and cacheSolve
## makeCacheMatrix function accepts a matrix which can be inversed and stored to a global variabel
## cacheSolve function will get the result of inversed matrix if it already exist, otherwise it will
## calculate the inverse then stores it to the global variable via makeCacheMatrix function.



## Write a short comment describing this function
## This function accept a matrix to be inversed and cached. 
## There are 4 functions inside this function:
## 1. set 2. get 4. setInversedMatrix 5. getInversedMatrix
## We save the inversed matrix in a variable called m outside the current environment.
## The function returns a list containing all 4 inner function
makeCacheMatrix <- function(x = matrix()) {
        inversedMatrix <- NULL
        set <- function(y){
                x <<- y
                inversedMatrix <<- NuLL
        }
        get <- function(){
                x
        }
        setInversedMatrix <- function(im){
                inversedMatrix <<- im
        }
        getInversedMatrix <- function(){
                inversedMatrix
        }
        list(set = set, get = get, 
             setInversedMatrix = setInversedMatrix, getInversedMatrix = getInversedMatrix)
}


## Write a short comment describing this function
## The cacheSolve funtion accept a list objek from makeCacheMatrix
## It checks for m whether it contains value from previous calculation of inversed matrix
## It returns m if it already contains a value, otherwise it will calculate inversed matrix
## then store/cache it.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInversedMatrix()
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data)
        x$setInversedMatrix(m)
        m
}
