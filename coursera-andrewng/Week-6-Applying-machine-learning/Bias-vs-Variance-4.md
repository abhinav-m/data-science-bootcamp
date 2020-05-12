# Examining high bias and variance

> The degree `d` of the polynomial fit to the data can result in high bias ( underfitting) or high variance (overfitting). These can be diagnosed with the help of plotting the training set cost J(theta)(train) along with the cross validation set costs J(theta)cross validation.

In the following figure, the two curves represents the plots amongst bias vs variance for training and cross validation sets.

Two key points drawn from these are:

- For high variance(overfit) cost function for training set J will be low, and for cross validation sets will be much higher J(CV) >> J(train)
- For high bias Training set error will be high and cross validation set error will be around the same. This is an underfit ie, J(CV) ~~ J(train)

![Bias vs variance](images/bias-vs-variance.png)
