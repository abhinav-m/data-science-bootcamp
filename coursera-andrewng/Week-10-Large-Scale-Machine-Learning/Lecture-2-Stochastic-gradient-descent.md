# Stochastic gradient descent

> For machine learning problems involving very large datasets, the normal gradient descent routine, which sums up over all training examples m, for one iteration of the algorithm is very inefficient and time consuming. This algorithm , also known as Batch gradient descent can be replaced by an algorithm which works with one training example at a time, known as Stochastic gradient descent.


## STOCHASTIC GRADIENT DESCENT

1. Randomly shuffle all training examples.
2. Repeat (from 1 - 10) times ( depending on the number of training examples). Theta = Theta - Alpha * Cost(for one example) for all values of 1 - m (note this doesn't involve summation over all examples in each iteration)
3. Instead of looking at all training examples looks at one training example and calculates it's descent and so on, this might lead to a much less smooth convergence, and doesn't reach the global minimum, but a region close enough to it that it is considered good.


> Can be done in 1 -> n passes of algorithm, but if dataset is sufficiently large, 1 pass might be enough to give convergence. Faster than batch gradient descent due to lack of summation at each step of the algorithm. Can be used to achieve scale, and better performance on large datasets.

[Lecture on Stochastic gradient descent](https://www.coursera.org/learn/machine-learning/lecture/DoRHJ/stochastic-gradient-descent)