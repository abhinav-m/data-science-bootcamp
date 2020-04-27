# Regularization

> Regularization is a method to solve the problem of overfitting our cost function by reducing the "weight" associated with some of the parameters associated with our data.

We regularize our Cost function: 1/2m Sum(H(x) - y(x))<sup>2</sup> + λ ∑<sub>j=1</sub><sup>n</sup>θ<sub>j</sub><sup>2</sup>

​
λ is known as the **regularization parameter**
​
![Cost function intuition][https://d3c33hcgiwev3.cloudfront.net/imageassetproxy.v1/j0x9h6tueeawbap5byfpeg_ea3e85af4056c56fa704547770da65a6_screenshot-2016-11-15-08.53.32.png?expiry=1588118400000&hmac=xor_zzls74enpuqemqpvqe5ophjmkjpx1h-df-v9y3s]

In the above figure, to make the figure a quadratic hypothesis, 2 inflated values of θ<sub>3</sub> and θ<sub>4</sub> are introduced which are quadratic in nature. Actual values of θ<sub>3</sub> and θ<sub>4</sub> are reduced to nearly 0 , which cause the equation to become quadratic in nature and become better.

> If λ , the regulization parameter is chosen to be too large our parameters are penalized too heavily and we get an underfitted implementation of our Hypothesis function. ( high bias)

[Further reading on regularizing cost function](https://www.coursera.org/learn/machine-learning/supplement/1tJlY/cost-function)
