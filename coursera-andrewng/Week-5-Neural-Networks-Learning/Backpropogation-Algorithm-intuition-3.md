# Backpropogation algorithm intuition

The backpropogation algorithm, like forward propogation intuitively tries to calculate the error (starting from the output units) and propogating back towards the input.

In the output units, error is simply the difference between prediction and output unit , thus that is used as the delta value we start with.

Intuitively, δ<sub>j</sub><sup>(l)</sup> is the "error" for a<sub>j</sub><sup>(l)</sup> (unit j in layer l). More formally, the delta values are actually the partial derivative of the cost function:

> Recall that our derivative is the slope of a line tangent to the cost function, so the steeper the slope the more incorrect we are.

The following image summarises the intuition behind neural network backward propogation and delta calculation:

![Backward propogation intuition](images/backward-propogation-intuition.png)

> A quick summary of the image is that to calculate the delta value of any layer element, we multiply it with the theta values of that element ( which would be a vector) and delta values of next layer and sum them. The last layer delta is simply the prediction - output values given. More intuition can be drawn from the above figure.

[Backpropogation explained](https://www.coursera.org/learn/machine-learning/supplement/v5Bu8/backpropagation-intuition)
