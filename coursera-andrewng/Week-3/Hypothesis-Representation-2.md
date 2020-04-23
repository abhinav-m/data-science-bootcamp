# Hypothesis representation

\begin{align*}& h\_\theta (x) = g ( \theta^T x ) \newline \newline& z = \theta^T x \newline& g(z) = \dfrac{1}{1 + e^{-z}}\end{align*}

Since linear regression doesn't fit here, and we want our hypothesis function to be in the range of 0 -> 1.
We plug our hypothesis function h(x) in the `logistic function`

## Logistic function

![Logistic function graph](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/1WFqZHntEead-BJkoDOYOw_2413fbec8ff9fa1f19aaf78265b8a33b_Logistic_function.png?expiry=1587772800000&hmac=qm1PBPeJt7RCbCZ64BqyK9svN09vjXfLXQ1mxAjcpXg)

> The function g(z), shown here, maps any real number to the (0, 1) interval, making it useful for transforming an arbitrary-valued function into a function better suited for classification.

**Note that the function is asymptotic to 0 and 1 as z approaches inf to -inf**

h*\theta(x)h
θ
​ (x) will give us the probability that our output is 1. For example, h*\theta(x)=0.7h
θ
​ (x)=0.7 gives us a probability of 70% that our output is 1. Our probability that our prediction is 0 is just the complement of our probability that it is 1 (e.g. if probability that it is 1 is 70%, then the probability that it is 0 is 30%).

hθ(x)=P(y=1|x;θ)=1−P(y=0|x;θ)P(y=0|x;θ)+P(y=1|x;θ)=1
