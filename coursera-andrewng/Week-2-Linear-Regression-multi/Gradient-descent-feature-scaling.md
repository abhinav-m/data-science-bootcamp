## Feature scaling

Since feature values can vary amongst features with different ranges, eg house size 1000 - 2000   , number of bedrooms 1 - 5  , house age 5 - 38 years etc



Features should be scaled for gradient descent to work better and converge faster.

Goal: Feature x(i) ` -1 <= x(i) <=1`

How? 
* Divide by maximum value of feature
* or Mean normalization

Replacex(i) with `x(i) - mean of feature / range of feature or sd`.

> We can speed up gradient descent by having each of our input values in roughly the same range. This is because θ will descend quickly on small ranges and slowly on large ranges, and so will oscillate inefficiently down to the optimum when the variables are very uneven.

[Gradient descent feature scaling](https://www.coursera.org/learn/machine-learning/supplement/CTA0D/gradient-descent-in-practice-i-feature-scaling)