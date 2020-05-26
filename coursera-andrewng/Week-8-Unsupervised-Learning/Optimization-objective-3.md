# K-means optimization objective

> K means optimization can be understood as trying to minimize the cost function in two steps: In the first step, cluster assignment step, K means tries to minimize the value of c(i) w.r.t every x(i), keeping the values of U(i) constant. In the second step, centroid movement step, K means tries to minimize the U(i) by calculating the average of the U values of the points in the training values, and assigning it to as the new U.

Algorithm is stated below:

## Algorithm

### INPUT:

* K -> Number of clusters ( The number of clusters we think we can find in data) 
* Training set , unlabelled x1, x2, x3...xm
* X is a column vector with n rows. ( no bias feature)


### K -means:

1. Randomly initialise k cluster centroids U1,U2,U3,...UK.
2. Repeat { 
   * for i = 1 to m:
        Calculate c(i) ie, centroid  closest to x(i)
        ie, c(i) = min || x(i) - Uk || ^2
    -> **CLUSTER ASSIGNMENT STEP**
   * for k = 1 to K:
        Uk = mean of points assigned to cluster k.
        ie, if x(1),x(2),x(6) assigned to cluster k = 2
        ie, c(1),c(2),c(6) = 2 U2 = 1/3(X(1)+X(2)+X(6))
    -> **MOVE CENTROID STEP**



* Minimizes w.r.t c 
* Minimizes w.r.t U
* Keeps iterating till minimum is found.

> Note as per quiz, on every step a minimum will be found. The norm distance between point and centroid is also known as the distortion cost function.

[Notes on optimization objective](https://coursera.org/learn/machine-learning/lecture/G6QWt/optimization-objective)