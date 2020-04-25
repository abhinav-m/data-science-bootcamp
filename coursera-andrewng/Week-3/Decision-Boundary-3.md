# DECISION BOUNDARY

To obtain our discrete classification we translate the output of the hypothesis function.

If we get h(x) >= 0.5 , y = 1
If we get h(x) < 0.5 , y = 0

`The sigmoid function gives value >= 0.5 when z >=0 and < 0.5 when z < 0`

![Logistic function graph](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/1WFqZHntEead-BJkoDOYOw_2413fbec8ff9fa1f19aaf78265b8a33b_Logistic_function.png?expiry=1587772800000&hmac=qm1PBPeJt7RCbCZ64BqyK9svN09vjXfLXQ1mxAjcpXg)

`g(z) >= 0.5 when z >=0`

If we input hypothesis function in `g(z)`

We get:

- y = 1 , when `h(x) >= 1`
- y = 1 when `h(x) < 1`

> The decision boundary is the line that separates the area where y = 0 and where y = 1. It is created by our hypothesis function.

z = h(x) doesn't need to be linear, it could be a polynomial of any order, giving results of different decision boundaries.

[Further reading on decision boundaries](https://www.coursera.org/learn/machine-learning/supplement/N8qsm/decision-boundary)
