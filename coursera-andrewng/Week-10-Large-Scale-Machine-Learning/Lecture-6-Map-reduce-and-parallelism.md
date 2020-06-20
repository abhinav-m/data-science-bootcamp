# Map reduce and parallelism

> Sometimes data accumulated for a machine learning problem can be so vast, that it cannot be run on one machine effectively. Here, parallelism and map reduce comes into the picture.


## Example

Taking a dataset with m = 400 and the example of Batch gradient descent, we can split the summation of examples onto 4 different machines where each machine does 1/4th of the work, and our computations would be 4x faster. After computations are complete, a `combine` step accumulates all of the work back into a single machine

> Theoretically , this should be 4x faster but due to N/W latencies and other barriers, this is a bit slower than 4x.

To see if our ML algorithm is a good for map reduce, ask yourself: Can learning algorithm be expressed as sum over training set? If yes, Map reduce can be used for the learning algorithm.

## Multi core machines:

> If a machine is available with multiple cores, each capable of processing,  these can be used within a single computer instead of multiple machines for training the algorithm. This also reduces barriers such as network latency etc.A few libraries automatically utilise the cores within a machine for this purpose.

[Lecture on map reduce and parallelism](https://www.coursera.org/learn/machine-learning/lecture/10sqI/map-reduce-and-data-parallelism)