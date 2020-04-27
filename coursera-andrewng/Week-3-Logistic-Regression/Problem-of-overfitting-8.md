# Overfitting

Common problem faced by many machine learning algorithm is `Overfitting`

**Underfitting** occurs when data is poorly fit and a better hypothesis function can be obtained which would lead to a more accurate prediction. Also known as **high bias.**

> Overfitting occurs when the hypothesis chosen to solve an ML problem solves the training data set well, but fails to generalize for further data sets. This generally occurs due to a high number of features in the problem. Also known as high variance.

Figure belows shows poor fit, good fit and overfitting from L -> R

![Examples of poor fit, good fit and overfit](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/0cOOdKsMEeaCrQqTpeD5ng_2a806eb8d988461f716f4799915ab779_Screenshot-2016-11-15-00.23.30.png?expiry=1588118400000&hmac=WI6Q-lK1ll5GK1_Ljy2-hXLGcfrKMAGLSsB6CkNaGO8)

This terminology is applied to both linear and logistic regression. There are two main options to address the issue of overfitting:

1. Reduce the number of features:

Manually select which features to keep.
Use a model selection algorithm.

1. Regularization

Keep all the features, but reduce the magnitude of parameters \theta_jθj  
​ .
Regularization works well when we have a lot of slightly useful features.

[Overfitting further reading](https://www.coursera.org/learn/machine-learning/supplement/VTe37/the-problem-of-overfitting)
