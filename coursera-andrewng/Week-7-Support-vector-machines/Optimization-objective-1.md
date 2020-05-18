# Optimization objective

> The support vector machine uses the sigmoid function and almost the same hypothesis as logistic regression with some key differences.

Following the intuition that with large value of z and y = 1 , our 2nd term for logistic regression hypothesis becomes zero and our cost becomes low ( as sigmoid function reaches ~~ 1.

Similarly, for y = 0 , first term of logistic regression becomes zero and lower values of z , cost becomes lower.

z in both the cases is simply Theta' X ( Normal linear regression representation)

For support vector machines, instead of denoting the usual formula in 1st and second term, we remove the constant 1/m and represent the first term as Cost(1) and second term as Cost(0)

Also the constant for regularization gets removed from the 2nd Theta term ( along with 1/m) and gets added to the first term.

- This constant is C, and somehow behaves similarly to 1/lambda (Large value of C , minimize the value of the second term)

* The hypothesis of support vector machines does not produce a probability of prediction, rather an absolute value of 0 or 1, 1 if Theta' X >= 0, and 0 otherwise.
