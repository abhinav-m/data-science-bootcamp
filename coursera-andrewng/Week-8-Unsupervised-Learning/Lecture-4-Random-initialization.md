# Random initialization 

How to choose the initialise random clusters in the K means algorithm?

Ideally, you want K << M (doesn't make sense assigning each value to its own cluster if K = M).

## RECOMMENDED METHOD

* Randomly pick K examples from the M data points. 
* Set U1,U2,U3... UK to these points
* Re iterate and run the algorithm and get different values for the cost function, choose the values which give the minimum cost function.

Note:
> Different random initialzation can give different local optimum / different solutions. This is why running multiple times gives a better solution overall. In the cases where we have a low number of clusters say, 3->10 , this method works very well. But with a high number of clusters, re iterating multiple times won't give much of a different answer, and is the same as running the algorithm one or two times.

[More on random initialization](https://www.coursera.org/learn/machine-learning/lecture/drcBh/random-initialization)