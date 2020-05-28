# Dimensionality-reduction 

> Suppose we have a data set of x1,x2 where x1 is length in inches , x2 is length in features. Both of these features are highly correlated, and having one or the other doesn't really bring in a new parameter to the learning algorithm. Reducing these two features from 2D -> 1D can be helpful, as only one point will be needed to represent a feature.

How to do this? 

Plot a line for the features, and project each data point to the line. By projecting each data point to the line, we get one point per example and X , which is a vector of 2 dimensions gets reduced to a vector of one dimension.

The same can be one for 3D -> 2D. By plotting a plane and projecting all points to it. In this case, data can be represented in a 2 dimensional vector instead of the original 3 dimensional vector.

This can also be done for 1000D -> 100D and so on.

## Motives and advantages
* reduces memory requirement.
* Learning algorithm runs much faster
* gets rid of redundant features(sometimes)

[More on dimensionality reduction](https://www.coursera.org/learn/machine-learning/lecture/0EJ6A/motivation-i-data-compression)