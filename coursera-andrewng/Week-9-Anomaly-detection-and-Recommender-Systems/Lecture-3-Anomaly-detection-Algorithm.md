# Anomaly detection algorithm - Density Estimation:


## Inputs and assumptions:
* Given training set X1,X2,X3...XM
* Each training example has a feature vector of N X 1.
* Assuming Each feature is distributed according to Gaussian distribution with mean U1, and variance Sigma^2
* We calculate probability P(Xj;Uj;Sigma^2j) (Product of all probabilities)


## Algorithm:

1. Choose features Xi such that they might indicate the anomalous example eg in the case of aircraft engine production vibration generated and heat created.
2. Fit parameters (variance and mean) for each example (This can be vectorized and implemented for each feature n, for m example)
3. Compute probability for new example to check whether it is anomalous or not ( using the gaussian distribution formula). If P < EPSILON , Anomaly, otherwise correct example.


[Lecture on Anomaly detection algorithm](https://www.coursera.org/learn/machine-learning/lecture/C8IJp/algorithm)
