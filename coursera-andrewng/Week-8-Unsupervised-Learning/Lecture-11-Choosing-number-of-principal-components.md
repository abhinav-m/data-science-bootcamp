# Choosing the number of principle components:

The question arises that how we choose the number of principle components (K) to reduce from our original dimensions N.

## Methodology:

PCA tries to minimize the average squared projection error ie : 1 / m sum( (xi - xi(approx) )^ 2).
Total variation in the data is: 1/m (sum(xi^2)) (average squared length , ie how far the examples are from being 0)

To choose K, commonly the following calculation is done:
Squared projection error / Total variation  < = 0.01 (1%) OR 99 percent variance is retained. 

>  1 / m sum( (xi - xi(approx) )^ 2) /   1/m (sum(xi^2))

* By calculating the above value appropriately, it can be said, I chose "K" such that 99,95,90 % variance was maintained. ie, the above value was < 1 ,5,10 %.
* For most data sets, since they are highly correlated in real life, this value is achievable.

## Algorithm:


### Inefficient
* Try PCA with K = 1 
* Compute Ureduce (z1,z2,z3...zm), Xapprox(x1app,x2app,x3app...xmapp)
* Compute  1 / m sum( (xi - xi(approx) )^ 2) /   1/m (sum(xi^2)) and check if the value is < 0.01 or the amount of variance we need retained.
* Compute the same with more values of  K till an appropriate K is obtained.


### Efficient:

```matlab
[U,S,V] = svd(Sigma)

% The S matrix is a diagnol matrix with S11,S22,S33...SNN and apart from these all values are 0.
% For given K we chose the first S11,S22,Skk value of these matrix and calculate:
% 1 - sum(Sii)(upto K) / sum(Sii)(upto n) This value should be <= 0.01 or sum(Sii)(upto K) / sum(Sii)(upto n) should % be >= 0.99 This also means 99% variance of original data is retained

```

> This calculation also means how well "k" dimension representation approximates original representation.

[More on choosing number of principal components](https://www.coursera.org/learn/machine-learning/lecture/S1bq1/choosing-the-number-of-principal-components)