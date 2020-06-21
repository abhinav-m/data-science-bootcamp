# Getting more data - Artificial data synthesis

> If we have a ml algorithm with low bias, we can increase the performance of our algorithm SIGNIFICANTLY by increasing the amount of training data. Data can be obtained by two main methods:

1. Create data from scratch.
2. Amplify already existing data into new training examples.

## Example - Photo OCR

* An example of increasing the test dataset for Photo OCR can be to super impose the various font libraries on randomized backgrounds. This gives us more examples to train on, and can be understood as creating data from scratch. (Blurring / applying distortions etc gives us even more examples)
* Take real data set and apply distortions / blur , etc to create more data from existing data. (Data amplification) Note, the distortions / effects applied to create more data should reflect what we expect to see in our training data set.

A similar example can be Voice recognition where data might be amplified by introducing noise / background chatter that is representative of real life examples, and is useful in the training set.


## Points to note
* Before spending the effort in getting more data, Learning curves should be plot and it should be ensured that algorithm has low bias. (Increase number of features/ hidden units in neural networks)
* Ask yourself , How much effort does it take to produce 10X more data. If the answer is a few days / weeks, algorithm will give MUCH better performance, and it can be worth it.
    * Some methods to procure data:
    * Artificial synthesis
    * Collect and label yourself ( by calculating the time involved in the same)
    * `Crowd source` from online platforms such as Amazon Mechanical turk. Though  can be tough to get good quality data from these services


[Getting more data lecture](https://www.coursera.org/learn/machine-learning/lecture/K0XQT/getting-lots-of-data-and-artificial-data)