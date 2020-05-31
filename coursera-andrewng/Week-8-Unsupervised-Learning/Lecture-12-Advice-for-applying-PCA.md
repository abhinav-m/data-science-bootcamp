# Advice for applying PCA

There are some cases where using PCA is a good option, but sometimes it is used unncessarily when it is not needed.

## Recommended Usage:


* Dimensionality reduction to speed up learning algorithm: Say you have a learning algorithm with 10K features, This is very common when you have image data. 100 X 100 pixel image = 10k features. By using PCA, you can reduce the number of features while maintaining high variance for the data. 
* Reduce memory/ disk to store data. (For these two usages, select K which  maintains the highest variance in the data.)
* Visualization (K = 2 , K = 3)

## Not recommended:

* Using PCA to address overfitting. Although PCA does reduce the number of features, it shouldn't be used for overfitting. Regularization is a better option here, because by using regularization we consider the `y` or label values of the data, which is not taken into account using PCA ( Thus, PCA can lead to some data not being taken into consideration while reducing feature size.)
* Another misuse is to automatically assign the PCA step in ML system design, without considering a ML system working without PCA. This automatic assumption can waste time. It's better to run ML algorithm on raw sample data first before using PCA on it while designing an ML system. ( In case any problems are faced, then PCA can be run on the data.)

## Implementation Note:
> Since PCA calculates Ureduce and mean normalization / feature scaling etc, PCA is always ran on the training set first, and tested on the CV / TEST set afterwards. 

[Advice on applying PCA](https://www.coursera.org/learn/machine-learning/lecture/RBqQl/advice-for-applying-pca)