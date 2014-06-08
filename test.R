rm(list=ls())
setwd("~/Personal/Studies/R Programming/Assignments/Week 2/trunk")

source("example.R")
set.seed(5)
a <- rnorm(1:10)
z <- makeVector(a)
b <- z$get()
cachemean(z)
mean(b)

a <- rnorm(1:10)
z$set(a)
b <- z$get()
cachemean(z)


source("cachematrix.R")
set.seed(2)
testMat <- matrix(rnorm(1:16), 4, 4) 
cM <- makeCacheMatrix(testMat)
aa <- cM$get()
bb <- solve(aa)

cacheSolve(cM)
