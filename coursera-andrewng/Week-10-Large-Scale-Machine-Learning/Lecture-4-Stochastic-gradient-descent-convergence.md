# Stochastic gradient descent convergence

> In batch gradient descent, by plotting cost function Jtrain over number of iterations, and checking if it is going down, we can see if our algorithm is converging. But this is expensive, and doing so for a large m in stochastic gradient descent, this would be expensive and time consuming.


## How to check for convergence.
* Compute cost for each example xi, yi BEFORE updating xi and yi.
* For every say 1000 iterations , plot cost AVERAGED over last 1000 examples.
* Plots can be used to check for convergence, and calculations every example is avoided.

## How to examine plots
Plots will be more noisy than gradient descent (batch) and won't give a global minimum, but somewhere close enough.

* Decreasing the learning rate alpha leads to slower iterations, but learns better at times, though difference between learning rates can vary.
* If curve is too noisy, increasing num of examples from 1000 - 5000 can make it smoother, but makes it time consuming and expensive computationally.
* If algorithm seems to be not converging, increasing examples can help to get a better intuition and it might actually be converging, but not showing up in the plots
* Algorithm can sometimes NOT converge or worse, diverge. Reexamine the algorithm and problem.

[Lecture on stochastic gradient descent convergence](https://www.coursera.org/learn/machine-learning/lecture/fKi0M/stochastic-gradient-descent-convergence)