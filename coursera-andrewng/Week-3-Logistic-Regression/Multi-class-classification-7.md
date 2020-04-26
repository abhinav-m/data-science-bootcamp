# MULTI CLASS CLASSIFICATION

To classify problems into more than one set, eg

- tagging of emails as work,friends,school etc
- or Diagnosing a patient as cold, flu, corona, not sick

We can use the same function of logistic regression as earlier but use a `One vs All strategy`

## One vs all strategy

> We create a hypothesis of each class against all others, and predict the probability of that hypothesis.

**Instead of Y = {0,1}, Y becomes {0,1,2,...N}**

y ∈ {0,1...n}
h<sup>(0)</sup><sub>θ</sub>(x)=P(y=0|x;θ)
h<sup>(1)</sup><sub>θ</sub>(x)=P(y=1|x;θ)
⋯
h<sup>(n)</sup><sub>θ</sub>(x)=P(y=n|x;θ)

**Our prediction becomes the maximum probability of a certain Y class amongst all different classes.**

prediction=max<sub>i</sub>(h<sup>(i)</sup><sub>θ</sub>(x))

We are basically choosing one class and then lumping all the others into a single second class. We do this repeatedly, applying binary logistic regression to each case, and then use the hypothesis that returned the highest value as our prediction.

The following image shows how one could classify 3 classes:
![One vs 3 classes example](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/cqmPjanSEeawbAp5ByfpEg_299fcfbd527b6b5a7440825628339c54_Screenshot-2016-11-13-10.52.29.png?expiry=1588032000000&hmac=0TJzXiPhPdcePcSkF8_Ei-jm8cCrYbzq92WqRkOwIck)

[Further reading on multi class classification](https://www.coursera.org/learn/machine-learning/supplement/HuE6M/multiclass-classification-one-vs-all)
