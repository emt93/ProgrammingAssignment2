## Below, I've created two functions which: 1. makes 2. stores 
## 3. recalls a matrix and it's inverse. All of this is done using 
## the cache.

## Just like the example shown in the layout of this problem, I created
## the makeCacheMatrix function which builds a custom matrix that can run up to 
## four function. Within the makeCacheMatrix, a function called "set" stores the 
## matrix in the cache. And then the function called "get" retrieves it.
## The functions "setInverse" and "getInverse" do the same thing but for
## the inverse matrix of the original. 

## The source of my logic amplied in this solution is the vector example
## stated in the layout of this problem.

makeCacheMatrix <- function(x = matrix()) {
        n<-NULL
        set<-function(y){
                x<<-y
                n<<-NULL 
        }
        get<-function()x
        setInverse<-funtion(solve)n<<-solve
        getInverse<-funtion()n
        list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
}

## The function cacheSolve takes the matrix built and stored by the makeCacheMatrix
## function to find it's inverse. It's first task is to check the cache to make 
## sure that the previous calculation has been done. If the result is that the
## calculation wasn't done then this function calculates the inverse and stores
## it in the cache. 
cacheSolve <- function(x, ...) {
        n<-x$getInverse()
        if(!is.null(n)){
                message("getting cached data")
                return(n)
        }
        data<-x$get()
        n<-solve(data, ...)
        x$setInverse(n)
}
