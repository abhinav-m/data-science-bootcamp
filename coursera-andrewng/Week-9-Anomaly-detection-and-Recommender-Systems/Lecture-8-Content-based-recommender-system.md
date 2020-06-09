# Content based recommender system

> Recommender systems which recommend new content to users on the basis of the content consumed by the user and knowledge of the features of content are considered as content based recommender systems.

Considering the previous notation, we use linear regression here to predict the value of Theta for each user j, and then predict the rating as Theta'xi.

Thus predicted rating = Theta' * xi
Actual rating = Yi

Thus, we minimmize the squared difference term Predicted - actual rating, and the regularization term, as in normal linear regression.

## Some points to note:
* **We ignore the value of m(number of ratings submitted by user j) as we can discard it as a constant**
* This can be done with the help of BFGS/ other advanced algorithms as discussed earlier in linear regression.
* We add a bias term to the feature vector Therefore N is now a vector -> N + 1
* Normal gradient descent simultaenous update applies here for all users upto j.

[Content based recommender systems lecture](https://www.coursera.org/learn/machine-learning/lecture/uG59z/content-based-recommendations)