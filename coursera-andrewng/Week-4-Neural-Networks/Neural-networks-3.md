# Neural Networks - Model representation

If we consider the first feature vector as X as a<sub>1</sub>.

We use the same sigmoid function as in logistic regression, and on each layer apply the function the the computed value of the hypothesis on the activation nodes.

> Note, here the input features are also considered as activation nodes , and they keep on feeding on themselves to give rise to new features and finally the output.

- a<sup>(2)</sup><sub>1</sub>=g(z<sup>(2)</sup><sub>1</sub>)
- a<sup>(2)</sup><sub>2</sub>=g(z<sup>(2)</sup><sub>2</sub>)
  and so on ..

In other words, for layer j=2 and node k, the variable z will be:

z<sup>(2)</sup><sub>k</sub>= Θ<sup>(1)</sup><sub>k,0</sub>x0 +Θ<sup>(1)</sup><sub>k,1</sub>x1 + ⋯ + Θ<sup>(1)</sup><sub>k,nxn</sub>

z<sub>(j)</sub>=Θ<sub>(j−1)</sub> \* a<sub>(j−1)</sub>.

Our sigmoid function g, is applied element wise to the above values.

This last theta matrix Θ<sup>(j)</sup> will have only **one row** which is multiplied by one column a<sup>(j)</sup> so that our result is a single number. We then get our final result with:

h<sub>Θ</sub>(x)=a<sup>(j+1)</sup>=g(z<sup>(j+1)</sup>)

For further reading on model representation:
[Model representation further reading](https://www.coursera.org/learn/machine-learning/supplement/YlEVx/model-representation-ii)
