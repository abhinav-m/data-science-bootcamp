# Mini batch gradient descent

## Types of gradient descent:
1. Batch gradient descent, computes over all m examples every iteration. Computationally expensive and slow, gives global minimum.
2. Stochastic gradient descent, computes over 1 example per iteration, gives close to a global minimum, and faster.
3. Mini batch gradient descent, computes over b examples per iteration where b < m, and gives a more efficient means of computing gradient. Faster than batch , and due to vectorized implementation, can be run in parellel by effective libraries.

> Formula is same as for Batch gradient descent, only summation over `m` example changes to `b` examples.

## Advantage:
* Faster, can be run in parallel using vectorized implementation

## Disadvantage:
* Have to come up with parameter `b` which is the batch size.

[Lecture on mini batch gradient descent](https://www.coursera.org/learn/machine-learning/lecture/9zJUs/mini-batch-gradient-descent)