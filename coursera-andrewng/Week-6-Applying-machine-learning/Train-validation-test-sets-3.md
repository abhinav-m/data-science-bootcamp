# Model selection and Train / Validation / Test sets

> When a particular hypothesis is chosen to model a dataset, even if the data is divided into training and test set, often times the practice doesn't give a good generalized result for new data because the degree of the polynomial ( in case of the linear regression test set) is also a parameter, which can fit the test set well, but not suited for generalized cases.

Given a model with many degrees of polynomical hypothesis, we can systematically approach to identify the "best" suited function. In order to choose the polynomial, choose each error associated with that degree of polynomial and J value and see the error result.

One way to do this can be to break down the data set into three sets:

1. Training set -> Initial hypothesis and general fit
2. Cross validation set -> To see which degree of polynomial gives lowest error
3. Test set -> To check if this works for generalized examples

We can now calculate three separate error values for the three different sets using the following method:

1. Optimize the parameters in Θ using the training set for each polynomial degree.
2. Find the polynomial degree d with the least error using the cross validation set.
3. Estimate the generalization error using the test set with J\_{test}(\Theta^{(d)})J <sub>test</sub>(Θ <sup>(d)</sup>), (d = theta from polynomial with lower error);

This way, the degree of the polynomial d has not been trained using the test set.

[Training / validating data sets](https://www.coursera.org/learn/machine-learning/supplement/XHQqO/model-selection-and-train-validation-test-sets)
