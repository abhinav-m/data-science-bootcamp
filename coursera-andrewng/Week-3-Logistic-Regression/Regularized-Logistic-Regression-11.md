# Regularized logistic regression

> Using the same concept as regularizing linear regression, logistic regression is regularized by adding a regularization parameter to our Cost function to minimize the theta parameters and get a better fit for our data, and avoid overfitting

Term added to cost function:
`λ / 2m​ ∑<sub>j=1</sub><sup>n</sup>​​θ<sub>j</sub><sup>2</sup>`

> Note that the above term **EXPLICITLY** removes the term ​​θ<sub>0</sub> from the equation (the extra parameter added to our features matrix) which makes our features matrix n+1,1

![Gradient Descent example](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/dfHLC70SEea4MxKdJPaTxA_306de28804a7467f7d84da0fe3ee9c7b_Screen-Shot-2016-12-07-at-10.49.02-PM.png?expiry=1588204800000&hmac=OhHFbjVZqrHDrE9xGvlcj5Bgu3vYtOA5KWGhpXc0TEA)

In the above figure:

- H(x) is the sigmoid function 1 / 1 + e <sup>-θ<sup>T</sup></sup>X
- At Every step θ<sub>j</sub> value gets reduced.
- θ<sub>0</sub> is still the same.

[Further reading on Regularized logistic regression](https://www.coursera.org/learn/machine-learning/supplement/v51eg/regularized-logistic-regression)
