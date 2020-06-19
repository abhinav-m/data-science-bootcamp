# Online ML algorithms

> If a continuous stream of data is available eg big websites such as amazon, flipkart, timesofindia etc, stream of data can be used to learn machine learning algorithm, and optimize user preference / experience.

Considering the algorithm to be logistic regression, applied on the data available

## Example 1 - Shipping service 

* Given a shipping service websites, with features such as the price of package, destination / origin etc. We can appropriately price the package to increase the sales for a user.


## Example 2 - Website CTR ( Click through rate)
* Considering a website that gives a user results of products on search (say 10 products) , how to optimize this search to increase the user clicks. Y = 1 if user clicks, 0 otherwise. Features of the product and their matches with the query of the user can be used. Here if we get 10 results per user search, we will run algorithm on 10 values.


## Other examples:
* Special offers
* Customized of news articles
* Product recommendation

## Algorithm:
Repeat forever (using the stream of data) 
    Get X,Y features and Y = 1 or 0 (based on use case)
    Update Theta based on X and Y using Logistic regression
    Example is discarded and not used again after it has been learnt from


> Note, if the user base is small, might be more sensible to use a normal training data set than live stream of data.

[ Lecture on online learning](https://www.coursera.org/learn/machine-learning/lecture/ABO2q/online-learning)