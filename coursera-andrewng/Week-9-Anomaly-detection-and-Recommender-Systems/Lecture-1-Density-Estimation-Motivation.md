# Density Estimation Anomaly detection motivation

Anomaly detection algorithm is mainly useful for unsupervised learning problems ( but it does have other uses in supervised learning as well). Say while managing an aircraft equipment line, you have a dataset of the aircrafts features while testing eg vibration frequency and heat generated. Plotting this to get a graph and setting a probability Epsilon with the associated **NON ANOMOLOUS** values, we could detect **ANOMALIES** in the manufacturing process whenever we find P(x) <= EPSILON. In this case, the equipment could be sent back to review and not packed up for delivery.


## Problem statement:

Given an unlabeled dataset x1,x2....xm, Is Xtest Anomalous?

Compute a probability **EPSILON** and compute this for P(Xtest). If P(Xtest) <= EPSILON, Xtest is anomalous.

> If the graph of the training set is plotted here, the center of the graph has the highest probability ( non anomolus, with the highest density) and it becomes lesser as we move towards the outer portion of the graph(where more anomalies lie).

## Applications:
* Fraud detection Eg, given a number of user behaviour features on a website like number of times logged in, typing speed, pages visited , Detect hacked accounts / unusual users.
* Manufacturing as in the aircraft problem.
* Monitoring computers in a data center: Eg, features could be Network Load, CPU load, CPU Load / Network Load ,  memory usage, disk access etc, Based on this a machine which might be about to go down can be detected.


[More on anomaly detection](https://www.coursera.org/learn/machine-learning/lecture/V9MNG/problem-motivation)