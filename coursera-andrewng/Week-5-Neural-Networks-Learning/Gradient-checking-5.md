# Gradient Checking

> Computing derivatives using advanced optimization algorithms and neural networks involves a lot of steps like forward propogation, backwards propogation etc and it can be error prone to do the same. To check the same we implement "Gradient Checking" , which is simply put, manually calculating the value of derivative of cost function, by adding a factor EPSILON and subtracting the same from J(theta) and dividing by 2\* EPSILON. This is basically the formula of slope (which is also the derivative)

In matlab this is done as follows:

```matlab

epsilon = 1e-4;
for i = 1:n,
  thetaPlus = theta;
  thetaPlus(i) += epsilon;
  thetaMinus = theta;
  thetaMinus(i) -= epsilon;
  gradApprox(i) = (J(thetaPlus) - J(thetaMinus))/(2*epsilon)
end;

```

## Points to keep in mind:

- Epsilon value must be small, but not so small that it becomes impossible to compute `gradientCheck`
- Gradient checking should only be enabled ONCE for the training set, and after verification it should be turned off. This is a very slow computation as it loops over all theta values, and manually calculating this is very slow and expensive. Using backpropogation algorithm is much faster.

[Further reading on gradient checking](https://www.coursera.org/learn/machine-learning/supplement/fqeMw/gradient-checking)
