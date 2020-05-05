# Backpropogation algorithm

Backpropogation is a term used in neural network terminology for minimizing the cost function. The principle is that we calculate the error starting from our output layer (last layer in neural network) and check the difference with the hypothesis function to calculate the error or the delta.

The delta term is calculated against all activation nodes in each layer.

Back propogation algorithm:

- a<sup>1</sup> = x<sup>1</sup> First activation layer is the input.
- forward propogation to calculate a<sup>l</sup> for l=2,3,....l

The following example shows forward propogation in a neural network with one training example.

![One training example network](images/gradient-computation-one-term.png)

- Using the value of y(t), (ie the output) we calculate δ<sup>(L)</sup> =a <sup>(L)</sup>−y <sup>(t)</sup>. Where L is our total number of layers and a<sup>(L)</sup> is the vector of outputs of the activation units for the last layer. So our "error values" for the last layer are simply the differences of our actual results in the last layer and the correct outputs in y. To get the delta values of the layers before the last layer, we can use an equation that steps us back from right to left:

* δ<sup>(L-1)</sup>,δ<sup>(L-2)</sup>,δ<sup>(L-3)</sup>... δ<sup>(2)</sup> δ<sup>(l)</sup>=((Θ<sup>(l)</sup>)<sup>T</sup>δ<sup>(l+1)</sup>) .∗ a<sup>(l)</sup> .∗ (1−a<sup>(l)</sup>)

The delta values of layer l are calculated by multiplying the delta values in the next layer with the theta matrix of layer l. We then **element-wise multiply that with a function called g', or g-prime, which is the derivative of the activation function g evaluated with the input values given by z<sup>(l)</sup>**

The g-prime derivative terms can also be written out as: g<sup>'</sup>(z<sup>(l)</sup>) a<sup>(l)</sup> .∗ (1−a<sup>(l)<sup>)

- Δ<sub>i,j</sub><sup>(l)</sup> := Δ<sub>i,j</sub><sup>(l)</sup> ​ + a<sub>j</sub><sup>(l)</sup>​ δ<sub>i</sub> <sup>(l+1)</sup>
  > With vectorization this becomes Δ<sup>(l)</sup> := Δ<sup>(l)</sup> + δ<sup>(l+1)</sup>(a<sup>(l)</sup>)<sup>T</sup>

Hence we update our new Δ matrix:

- D<sup>(l)</sup><sub>i,j</sub > := 1 /m(Δ<sub>i,j</sub><sup>(l)</sup> +λΘ<sup>(l)</sup><sub>i,j</sub>), if j≠0.
- D<sup>(l)</sup><sub>i,j</sub > := 1 /m(Δ<sub>i,j</sub><sup>(l)</sup> If j=0

The capital-delta matrix D is used as an "accumulator" to add up our values as we go along and eventually compute our partial derivative. Thus we get `∂/∂Θ<sup>(l)</sup><sub>ij</sub> J(Θ)= D<sub>ij</sub><sup>(l)</sup>`
​
Here is the algorithm summarized in a picture:
![Backpropogation algorithm summarized](images/backpropogation-algorithm-summarized.png)
