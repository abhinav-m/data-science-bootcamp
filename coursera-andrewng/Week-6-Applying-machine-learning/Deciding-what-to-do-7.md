# Deciding how to optimising algorithm

> Suppose our example works well on training set, but fails to generalize for new values, we can consider the following options to fix this

- Get more training examples -> Fixes high variance
- Try subset / smaller set of features -> Fixes high variance
- Get more features -> Fixes high bias
- Get polynomial features -> Fixes high bias
- Decrease Lambda -> Fixes high bias ( as gives a better fit)
- Increase Lambda -> Solves underfitting and fixes high variance

## Diagnosing neural networks

Similar to above:

- **Fewer input parameter**s can lead to **underfitting** , but **computationally cheaper**
- **Higher training parameters** can lead to **overfitting**, but **computationally expensive**

> Number of hidden layers can be decided by seeing error using cross validation sets, and thus selecting appropriately. A single hidden layer is a good starting default.

**MODEL COMPLEXITY EFFECTS:**

- Low model complexity ( low order polynomial) prone to underfitting, high bias and low variance. Model fits poorly, consistently.
- High model complexity (high order polynomial) prone to overfitting, high variance low bias, model fits train set consistently, but doesnt generalize well for test set.
- Need a model somewhere in between that can generalize and fit the data reasonably well.

[Further reading on deciding a machine learning model](https://www.coursera.org/learn/machine-learning/supplement/llc5g/deciding-what-to-do-next-revisited)
