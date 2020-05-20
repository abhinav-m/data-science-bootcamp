# Kernels

## Key takeaways:

> For predicting a non linear decision boundary, often we have to use polynomial features to seperate data which is not linearly seperable / has outliers etc.

An alternative to this is Kernels.

Suppose we take two features X1 and X2, and plot two "landmark" features that are close to these features, L1 and L2.

We run a "similarity" function on these landmark features and original X1 and X2 to calculate the value of new features F1 and F2.

One such similarity function (also known as the kernel function) is the [Gaussian kernel function](https://shapeofdata.wordpress.com/2013/07/23/gaussian-kernels/) which takes the exponentiation of negative eucliden distance square of original feature and landmark feature / 2 \* sigma square.

- When feature X1 is close to landmark L1 , feature F1 by Gaussian kernel is close to 1
- When feature X1 is far to landmark L2, feature F2 by Gaussian kernel is close to 0.

- When sigma^2 is decreased, values of features(F1) falls more rapidly as moved away from feature X1
- When sigma^2 is increased, values of features(F2) falls slowly when moved away from feature X2.

This ends up with giving us more complex decision boundaries applicable around the landmarks, and thus many more use cases.

(Kernels explained)[https://www.coursera.org/learn/machine-learning/lecture/YOMHn/kernels-i]
