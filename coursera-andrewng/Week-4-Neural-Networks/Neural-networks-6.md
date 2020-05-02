# Multi class classification

To classify into a number of possible values, we make our output hypothesis function return a vector of values. 

If we wanted to classify data into 4 categories, 

Instead of Y = {1,2,3,4} Y will be a vector with values [1 0 0 0]  [0 1 0 0] [0 0 1 0] [0 0 1 0] for each of our cases.

The hypothesis function of the neural network is supposed to return one of the above cases as it's result (O/P layer)

Each y<sup>(i)</sup> represents a different image corresponding to either a car, pedestrian, truck, or motorcycle. The inner layers, each provide us with some new information which leads to our final hypothesis function. 

Our resulting hypothesis for one set of inputs may look like:


hΘ(x)= [ 0 0 1 0] in which case we predict Y = 3 case.

Following image is an example of the same.

![One vs all network](images/one_vs_all_network.png)

[Further reading on multi class neural networks](https://www.coursera.org/learn/machine-learning/supplement/xSUml/multiclass-classification)