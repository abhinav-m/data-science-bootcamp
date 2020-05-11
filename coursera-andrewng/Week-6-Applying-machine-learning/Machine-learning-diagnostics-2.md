# Machine learning diagnostics

> Can be understood as tests written to understand the performance of a machine learning algorithm , and how to go about improving performance. These can take time to implement but save time in the future.

A hypothesis may have a low error for the training examples but still be inaccurate (because of overfitting). Thus, to evaluate a hypothesis, given a dataset of training examples, we can split up the data into two sets: a training set and a test set. Typically, the training set consists of 70 % of your data and the test set is the remaining 30 %.

The new procedure using these two sets is then:

1. Learn Θ and minimize J<sub>train</sub>(Θ) using the training set
2. Compute the test set error J<sub>test</sub>

- For linear regression, the cost function for test data is the same
- For Logistic regression , can use the cost function or check classifications done correctly by our algorithm as a measure.

​
[More on machine learning diagnostics and formulas](https://www.coursera.org/learn/machine-learning/supplement/aFpD3/evaluating-a-hypothesis)
