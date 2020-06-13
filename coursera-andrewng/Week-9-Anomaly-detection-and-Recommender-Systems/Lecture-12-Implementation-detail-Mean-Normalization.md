# Implementation detail - Mean Normalization

> If we consider the case in our recommender system where a user has not recommended any movies, how do we handle this users initial predicted ratings?

* Since the user has not rated any movies, our gradient descent function  (without mean normalization) computes the value of Theta as 0, thus predicted ratings of the Movie Theta'* Xi is 0.

* This is not a useful prediction, Thus to correct this, we calculate the row wise mean of Each movie ( every rating given by user) and create a new matrix from our ratings movie Y by subtracting Y - mean. This matrix is used as the actual rating, and  the prediction formula now changes to Theta' * Xi + Mean(i).

* Thus, any user who hasn't rated any movies will get the average predicted ratings for that movie.

* We can also normalize by calculating mean over columns, but doing so involves calculating prediction for a movie not rated by any users, and this metric is not as useful as giving a user who hasn't rated any movies initial content.

[Lecture on mean normalization](https://www.coursera.org/learn/machine-learning/lecture/Adk8G/implementational-detail-mean-normalization)