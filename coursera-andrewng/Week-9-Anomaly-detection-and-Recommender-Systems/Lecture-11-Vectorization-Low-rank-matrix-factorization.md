# Vectorization - Low rank matrix factorization

> It is possible to get a vectorized implementation of Predictions if we take actual ratings Y = matrix of column vectors of each user j rating of movie, and Assuming Predicted Ratings Matrix each row is : Theta1' * x(1) , Theta2' * x(1) ..  ThetaNu' * x(1) Each row represents a movie, and each column represents a user, each value in the matrix is prediction of movie i by user j.

If we take the user parameters vectors theta, and transpose them as row vectors, and do the same with the feature Vectors X , our predictions can be calculated as X * Theta'. 
This algorithm is also known as **low rank** matrix vectorization because the calculated matrix has low rank mathematically.

## Finding related content / products
> Suppose after finding out the feature vector for a movie, we need to find similar movies, we simply calculate the distance of the feature vector from other available feature vectors, the minimum distances can be considered as similar movies. Note, this makes sense mathematically, but we may not be able to visualize what is the grouping logic of these movies together. Generally, they are the most important features of the product.

* After calculating features Xi, Find 5 minimum || Xi - Xj || ^ 2 to recommend 5 most similar movies.

[Lecture on low rank matrix factorization](https://www.coursera.org/learn/machine-learning/lecture/CEXN0/vectorization-low-rank-matrix-factorization)