# Implementing unrolling parameters

While using the `fminunc` function to compute gradient descent and optimal value of theta, we need to pass vector representation of our parameters or weights, ie `theta` . Since in neural networks Thetas are matrices, we need to **unroll** these into vector form to pass to `fminunc`.

```matlab

% These unrolls the matrices into one vector
thetaVector = [ Theta1(:); Theta2(:); Theta3(:); ]
deltaVector = [ D1(:); D2(:); D3(:) ]

```

If the dimensions of Theta1 is 10x11, Theta2 is 10x11 and Theta3 is 1x11, then we can get back our original matrices from the "unrolled" versions as follows:

```matlab

Theta1 = reshape(thetaVector(1:110),10,11)
Theta2 = reshape(thetaVector(111:220),10,11)
Theta3 = reshape(thetaVector(221:231),1,11)

```

Below is a quick summary of the learning algorithm:

![Learning algorithm summarized](images/Learning-algorithm-summarized.png)
