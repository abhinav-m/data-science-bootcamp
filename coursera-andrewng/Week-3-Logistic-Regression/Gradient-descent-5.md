# SIMPLIFIED COST FUNCTION , WITH GRADIENT DESCENT

To simplify the cost function of logistic regression without having two distinct cases at `y=1` and `y=0` .

We can compress our cost function's two conditional cases into one case:

`Cost(hθ(x),y) = −ylog(hθ(x)) − (1−y)log(1−hθ(x))`

> Notice that when y is equal to 1, then the second term (1-y)\log(1-h*\theta(x))(1−y)log(1−hθ(x)) will be zero and will not affect the result. If y is equal to 0, then the first term -y \log(h*\theta(x))−ylog(hθ(x)) will be zero and will not affect the result.

h= g(Xθ) **g is the sinusoidal function of our hypothesis**

## VECTORIZED IMPLEMENTATION OF COST FUNCTION

> J(θ)= 1/m \* (−y<sup>T</sup>log(h)−(1−y)<sup>T<sup/>log(1−h))

## VECTORIZED IMPLEMENTATION OF GRADIENT DESCENT

θ := θ - alpha/m \* X<sup>T</sup>(g(Xθ)- y)

[Further reading on gradient descent of logistic regression](https://www.coursera.org/learn/machine-learning/supplement/0hpMl/simplified-cost-function-and-gradient-descent)
