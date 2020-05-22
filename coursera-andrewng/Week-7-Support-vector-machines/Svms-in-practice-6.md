# SVMS in practice

> SVMS , like the other ML algorithms wouldn't needed to be implemented from scratch, libraries with an optimized approach for using SVMS are generally available. (eg liblinear, libsvm etc)

In running these libraries the following need to be specified:
* Choice of parameter 'C'
* Choice of Kernel function ( sometimes available with the algorithm) Note: An SVM with no kernel function acts as a standard linear classifier (predicting y =1 when Theta'X >= 0)
* If using a Gaussian kernel, need to choose value of sigma^2

Following shows an implemented similarity function which can be passed to an SVM as the kernel: ( some libraries provide their own)

```matlab
function f = Kernel(x1,x2):
% x1 = training set, x2 = landmarks

f = exp(- ||x1-x2|| .^2 / (2 * sigma^2))
return

```

> When using Gaussian kernel, it is often ESSENTIAL to perform FEATURE SCALING on the training paremeters, this is because the norms calculated can vary, eg Norm x-l = v , ||v|| = v1^2 + v2^2 + v3^2...vn^2 = (X1-l1) ^ 2 , (X2-l2) ^ 2 .... If X1 is housing size, and X2 is number of bedrooms this can vary by a huge margin. Therefore MUST be scaled.

> Not any function can be used as a similarity function. To run an SVM, given function must satisfy MERCER's theorem to be optimized correctly and efficiently , and not to diverge


## Some other Kernels:
* Polynomial kernels (X'l + constant) ^ degree eg, (X'l + 3)^4 , tend to assume both are non negative X' and l.
* More esoteric, for rarer use cases: String kernels, chi-square kernels, histogram kernel, intersection kernel etc. Eg for text classificationmight want to use string kernel for similarity.

## Multi class classification:

For multi class classification, either a library can be used which supports multi class classsification out of the box OR the one vs all method can be used.

Summarised:
> Train K SVMs for each class y=1,2,3,4... K get features Theta1,Theta2, Theta3... ThetaK Pick class i witth largest Thetai'X as prediction

## Logistic regression vs SVMS:

n = number of features, m = training examples

* If **n is large relative to m** n >= m eg, n = 10,000 m = 1...1000 , use Logistic Regression/ SVM without kernel (linear svm)
* If **n is small , m is intermediate** n = 1...1000 , m = 10...10000 Gaussian Kernel can be used with SVM
* If **n is small, m is LARGE m >= 100,000** Create/add more features or Use logistic regression /SVM without a kernel as SVMS can struggle in this case ( due to norms calculation).

> SVM without a kernel and logistic regression serve similar function.

## Some comparisons
* SVMS work better with generating more features and kernels.
* Neural networks likely to work well for most of these settings, but can be slower. Also NN can have local optimum ( though rarely ) and SVMS have convex functions so give global optimum.

## Tips

> Choosing the algorithm is one thing, but error analysis/ debugging algorithm, choosing more features and coming up with features/ data can be much more crucial
> SVMS are very popular in the industry for complex decision boundaries, and are widely used in the industry.

[Using an SVM summary](https://www.coursera.org/learn/machine-learning/lecture/sKQoJ/using-an-svm)

