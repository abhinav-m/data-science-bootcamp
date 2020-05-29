# PCA Algorithm:

The PCA algorithm is done in two steps:

1. **Data preprocessing:**
    * Given the training set from x1,x2,x3... xm. Preprocess the data (feature scale / mean normalize). Mean normalization is to replace each feature with x - mean(x). ( to make the features have 0 mean). 
    * Feature scaling is optional and needed when the features are far off each other eg Number of bedrooms and size of houses in acres. Xi = Xi - mean(x ) / Range or S.D 
2. Reduce data from n dimensions to k dimension: 
    * Compute covariance matrix  : Sigma = 1 / m * sum(xi * xi') 
      ```
      % matlab implementation:
      sigma = 1/m * x' * x;
      ```
    * Compute **EIGEN VECTORS** of sigma matrix. For this, pre built packages like eig and **SVD** (singular value decomposition) can be used.
    * [U,S,V] = svd(sigma)  
      ```matlab
        [U,S,V] = svd(sigma) 
      ```
     > The U matrix obtained is a N X N matrix where we pick the first K features we want. These are the projection vectors.
     
     The feature Z(i) is now Z(i) = [__U1__,__U2__,__U3__...__UK__]' * Xi ie K X N * N X 1 = K X 1  (required dimensions)


In Matlab:

```matlab

Sigma = 1/m * X' * X;
[U,S,V] = svd(Sigma);
Ureduce = U[:,1:k];
z = Ureduce' * X;

% Note no bias feature is added in the case of PCA ie, No X(0)

```

[More on PCA algorithm](https://www.coursera.org/learn/machine-learning/lecture/ZYIPa/principal-component-analysis-algorithm)