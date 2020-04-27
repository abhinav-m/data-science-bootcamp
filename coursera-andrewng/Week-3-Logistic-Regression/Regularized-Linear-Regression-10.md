# Regularized linear regression

To regularize linear regression, we modify our gradient descent function ( except for θ<sub>0</sub> , though mathematically, it doesn't matter)

Due to regularization, the gradient descent algorithm becomes:

θ<sub>j</sub> := θ<sub>j</sub> \* (1 - (alpha \* lambda) \ m) - alpha/m \* ....

`(1 - (alpha \* lambda) / m) term will always be < 1`

Therefore, θ<sub>j</sub> := θ<sub>j</sub> value will be reduced.

## NORMAL EQUATIONS.

min J(θ) = (X<sup>T</sup>X)<sup>-1</sup>X<sup>T</sup>Y

```matlab
ident = eyes(n+1,n+1)
ident(1,1) = 0
```

becomes (X<sup>T</sup>X + lambda \* ident)<sup>-1</sup>X<sup>T</sup>Y

If m(number of training examples) < n (features) (X<sup>T</sup>X) is non invertible. However, when we add the term λ⋅L, then it becomes invertible

[Further reading on regularized linear regression](https://www.coursera.org/learn/machine-learning/supplement/pKAsc/regularized-linear-regression)
