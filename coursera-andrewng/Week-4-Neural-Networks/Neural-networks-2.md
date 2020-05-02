# Neural networks

> Originiated from algorithms that tried to mimic the brain.

On expriments in rewiring the brain ( attaching vision cortex to sound input and vice versa) scientists found out that the brain can learn pretty much anything using one training algorithm.

This algorithm rose to popularity in 80s and the early 90s and then went down in popularity in the late 90s.

Now, due to advances in technology as well as other reasons, Neural networks have become an essential part of machine learning.

## Neural networks model representation

> In neural networks, similar to neurons, we take our input features (X) x1.....xn and our output (result of the hypothesis function). The hypothesis function is the same as in the case of logistic regression ie, the sigmoid function.

![Neural networks visual representation](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/0rgjYLDeEeajLxLfjQiSjg_0c07c56839f8d6e8d7b0d09acedc88fd_Screenshot-2016-11-22-10.08.51.png?expiry=1588550400000&hmac=i6UBU0w_gh_v0y6YE_--fROqGKhbcjOpNUGm3qExmUo)

The theta parameters are sometimes called "weights"

Input layer -> Layer 1 -> Layer 2 -> Output layer

Layer 1 and Layer 2 are sometimes called "Hidden layers"

a<sup>(j)</sup><sub>i</sub>="activation" of unit i in layer j
Θ<sup>(j)</sup>=matrix of weights controlling function mapping from layer `j` to layer `j+1`

Each layer gets its own matrix of weights, Θ<sub>(j)</sub>.

The dimensions of these matrices of weights is determined as follows:

**If network has s<sub>j</sub> units in layer j and s<sub>j+1</sub> units in layer j+1, then Θ<sub>(j)</sub> will be of dimension s<sub>j+1</sub>×(s<sub>j</sub>+1).**

Example: If layer 1 has 2 input nodes and layer 2 has 4 activation nodes. Dimension of Θ(1) is going to be 4×3 where s<sub>>j</sub> = 2 and s<sub>j+1</sub> = 4 so s<sub>j+1</sub> X (s<sub>>j</sub> + 1) = 4 X 3
