# K-means algorithm

> One of the most popular clustering algorithms used in the industry, where data is needed to be grouped into "clusters".



Consists of 2 main steps:

1. Cluster assignment: Choose random cluster center points in initial step, and assign every data point to a cluster from 1-K.
2. Move centroid: Calculate mean of all points assigned to a cluster and move centroids to the mean.



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

> If a cluster has 0 points assigned to it, it can be removed from the K clusters, we end up with K-1 clusters, or re initialise clusters RANDOMLY again, if we really want K clusters. The former is used more often.


## K - means for non seperated clusters

> Suppose we have a problem where the clusters are not seperated as well. One such example is a t shirt size seperation S, M, L based on height and weight or Market segmentation problem. K means can help identify such clusters and make sense out of this data, and design products around it.

[More on K-means algorithm](https://www.coursera.org/learn/machine-learning/lecture/93VPG/k-means-algorithm)