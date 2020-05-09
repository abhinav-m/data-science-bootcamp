# Putting it together

The initial step that must be done while implementing a neural network ( can be considered as step 0) is to choose a network architecture.

Generally speaking , the following points can be considered while choosing a network architecture, although there is much more behind this that can help choose a network:

- Number of input units = number of features / dimension of features.
- Number of o/p units = number of classes ie, y=1,2,3,...n
- Default is 1 hidden layer, generally ~ 2x input units in hidden layers. If there are more hidden layers, units in them must be of same number, this also makes them computationally more expensive.

A neural network implementation can be summarized in the following steps:

1. Randomly Initialise theta weights
2. Implement forward propogation to get Hypothesis for every x(i) where i = 1 -> m
3. Implement cost function
4. Implement back propogation to calculate delta values and derivatives of cost function (gradients)
5. Use gradient checking to see if gradient value calculated is correct, disable gradient checking.
6. Use gradient descent / advanced algorithm optimization to minimize cost functions with weights in theta.

Forward and backward propogation by looping over every training example:

```matlab
for i = 1:m,
   Perform forward propagation and backpropagation using example (x(i),y(i))
   (Get activations a(l) and delta terms d(l) for l = 2,...,L

```

The following image gives an intuition of what happens in the foward and backward propogation of neural network, and its intuition. Note that since that the cost function J(theta) is not convex, we might reach a local optimum

![Neural network intuition with an image](images/neural-network-intuition.png)
