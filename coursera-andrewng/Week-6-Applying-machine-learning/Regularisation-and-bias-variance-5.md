# Regularization and bias / variance

> Adding a low value of regularization to our cost function ,tends to overfit the data as Theta values are almost untouched, and for a high degree polynomial, this can cause the data to fit well for the training set, but gives high error on the cross validation set. Whereas, high value of lambda causes an underfit, as except Theta0 (which is the bias term) all the other theta values are approximately equal to zero

The following figure summarizes the same:

![Regularization and bias/variance](images/regularization-effect-bias-variance.png)

## Algorithm for regularization assessment

1. Create a list of lambdas (i.e. λ∈{0,0.01,0.02,0.04,0.08,0.16,0.32,0.64,1.28,2.56,5.12,10.24});
2. Create a set of models with different degrees or any other variants.
3. Iterate through the λs and for each λ go through all the models to learn some Θ.
4. Compute the cross validation error using the learned Θ (computed with λ) on the JCV(Θ) without regularization or λ = 0.
5. Select the best combo that produces the lowest error on the cross validation set.
6. Using the best combo Θ and λ, apply it on Jtest(Θ) to see if it has a good generalization of the problem.

> Note: The regularization parameter is learnt from the training set, and with the theta values obtained from this, VERIFIED on the CV cost function (which doesn't contain the regularization parameter).

[Further reading regularizationa and bias/variance](https://www.coursera.org/learn/machine-learning/supplement/JPJJj/regularization-and-bias-variance)
