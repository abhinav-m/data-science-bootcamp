# Examples of neural networks

> By varying the value of weights theta, different neural network computations can be done.

These, when fed one after the other to multiple layers in a neural network, can give a much more complex outputs based on the given inputs.

More layers, GENERALLY leads to a progressively more complex output result. (based on parameters)

The following image shows a neural network which calculates XNOR (which is 1 when inputs are the same (0,0) and (0,1))
by combining logical AND in its hidden layer with NOT X1 and NOT X2. This results in XNOR X1, X2:

> For the transition between the first and second layer, we'll use a Θ<sup>(1)</sup> matrix that combines the values for AND and NOR:

Θ(1)=[−30 20 20 ] <- AND
     [ 10 −20 −20 ] < NOT X1 AND NOT X2 to get a<sup>2</sup>

Θ(1)= [−30 20 20 ] <- OR 
![XNOR example network](images/xnor_network_example.png)

[Further reading on neural network examples](https://www.coursera.org/learn/machine-learning/supplement/5iqtV/examples-and-intuitions-ii)
