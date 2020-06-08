# Recommender system problem formulation

* Very common use of ML algorithm in the industry to recommend products / movies etc in a business. Eg Amazon, netflix etc.
* Makes up a substantial part of businesses but low academia interest.

> For many algorithms , features have to be chosen in order to learn the algorithm, but in the case of recommender systems, it is the opposite. (features are learnt from the algorithm)

## Example Recommender system predicting movie ratings:

**Notation**:
* Nu -> Number of users
* Nm -> Number of movies
* User can rate a movie, or choose not to rate. R(i,j) = 1 if user j has rated movie i, else 0.
* y(i,j) = Rating user j has given to movie i. Undefined if not rated.
  

> Given the above data, give a prediction of values for the movies that haven't been rated yet by the user.
> Recommender system fills in these values, and recommends the content that would be highly rated to the user according to it.

[Lecture on recommender system problem formulation](https://www.coursera.org/learn/machine-learning/lecture/Rhg6r/problem-formulation)