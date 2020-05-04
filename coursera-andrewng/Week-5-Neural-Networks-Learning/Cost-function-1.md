# Cost function of neural networks

If we talk about a neural network classification problem, there can be either a binary classification problem with one output variable or a multiclass classification problem with multiple nodes at the output layer.

Let's first define a few variables that we will need to use:

- L = total number of layers in the network
- s <sub>l</sub> = number of units (not counting bias unit) in layer l
- K = number of output units/classes

Since for our neural networks with multiple output nodes ( multi class classificaiton problems). We denote h<sub>Θ</sub>(x) <sub>k</sub> as being a hypothesis that results in the k<sup>th</sup> output.

For neural networks in logistic regression with regularization, along with the cost function for m training examples we also sum up the cost function for each `k` output layers.

For the regularization term, we add all individual theta matrices values **excluding the bias terms added ie,Θ<sub>0</sub>** and sum their squares up, multiplying by `lambda / 2 *m`

Note:

- the double sum simply adds up the logistic regression costs calculated for each cell in the output layer
- the triple sum simply adds up the squares of all the individual Θs in the entire network.

[Further reading on cost function - neural networks](https://www.coursera.org/learn/machine-learning/supplement/afqGa/cost-function)
