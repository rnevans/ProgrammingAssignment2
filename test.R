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