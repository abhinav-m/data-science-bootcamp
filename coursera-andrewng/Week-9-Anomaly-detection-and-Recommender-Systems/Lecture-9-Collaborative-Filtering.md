# Collaborative filtering 

> For the set of problems we have encountered so far, we have the dataset (m) and the features of the dataset to use (n). Using collaborative filtering, we can come up with the features of the dataset.


## Key takeaways:
* Taking the movie rating example, it can be hard to come up with the features of the movie manually ie Romantic/Action etc. If we assume we only have the rating of the movies and preference of the users(if they like romantic / action movies etc). We can come up with the features of a movie (as being romantic / action ) etc.

* Given the value of Theta, (input from the user) , we predict the features of movie Xi, such that the prediction Theta' * Xi = close to movie rating value ( Assume 5 for high value and 0 for low value)

* The optimization objective is the same as earlier, only now the feature Vector Xi is being predicted, in the hopes of minimizing the value of Prediction - yi (Actual rating)
  
* Earlier, we were trying to predict movie ratings, given the features of the movies, and now we are trying to do the opposite, the question arises, which comes first predicting the ratings given the features, or predicting the features given the ratings.

* A solution to the above question is to Guess an initial value of Theta ( whether user dislikes or likes action movies) and use it to find a set of features, repeat till we have sufficient values of Theta and X , to reach an optimal value of both so they converge.

`Theta -> X ->Theta->X -> Theta -> X -> Theta -> X`

> Assumes each user rates multiple movies, and a movie has been rated by multiple users.
> Known as collaborative filtering becaue multiple users are collaborating to improve the ratings for everyone.

[Lecture on collaborative filtering](https://www.coursera.org/learn/machine-learning/lecture/2WoBV/collaborative-filtering)