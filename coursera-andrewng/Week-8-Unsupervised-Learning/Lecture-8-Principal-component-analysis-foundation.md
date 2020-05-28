# Principal component analysis foundation

> Principal component analysis algorithm or PCA is an algorithm used in dimensionality reduction,which tries to project points to a lower dimension, so that the sum of square projection errors are minimum. ( Minimum orthogonal distance of points to their projections).

The length of the projections of the points to the lower dimensions is also known as the projection error.

> Mean normalization and feature scaling should be performed before running PCA so all points have a similar scale.

## Goal of PCA:

For 2D to 1D : Find a one dimensional vector U(1) onto which to project the data, so as to minimize the projection error. 

> Note both positive and negative projections are considered to be the same here, as our goal is not to get the value of these , rather to reduce the dimension of our data.

**GENERAL CASE**: Reduce from `n` dimension to `k` dimension: Find K vectors U1,U2,U3... UK onto which to project the data,minimizing the projection error.

Mathematically: Find the linear subspace spanned by vectors U1,U2,U3... UK ie we can define position in plane using K directions.

We use the ORTHOGONAL projection error for PCA, unlike Linear regression which uses perpendicular distance to be minimized.

## PCA vs LINEAR REGRESSION : Why pca is not linear regression.

* In linear regression, we have some special variable "y" in our feature set X that we want to predict, unlike PCA where all features are treated equally.
* Linear regression minimizes shortest perpendicular distance to predict new lines / points whereas PCA uses shortest orthogonal distance. 


## Summary
PCA tries to minimize squared projection error  ( where each point is to be projected on lower dimensional surface).

[Lecture on PCA introduction](https://www.coursera.org/learn/machine-learning/lecture/GBFTt/principal-component-analysis-problem-formulation)