# Prioritizing what to work on - System design

> While working on building an email spam classifier, we could come up with the input features representation where each word in the input can be a word probable in spam email vs a word which is non spam. Suppose with an email id abhinav_m@hotmail.com , some example of spam could be: "deal" , "buy" , "lottery" , some non spam would be: "abhinav" , "now",etc.

Given a dataset of emails, we could build a vector of each email where each entry represents a word. A word found in the email could be "1" , and a word not found in the email would be "0". The vector normally contains 10,000 to 50,000 entries gathered by finding the most frequently used words in our data set. Once we have all our x vectors ready, we train our algorithm and finally, we could use it to classify if an email is a spam or not.

Here is an example of the same:

![Machine learning sys design example](images/machine-learning-system-design.png)

A lot of the time people chase "gut feelings" to improve the accuracy of the classifier. Instead, some pointers on how this can be done are listed below:

- Collect lots of data. An example of this is the "honeypot" project ( where spammers were trapped into using email ids for spam classification data collection). This doesn't always work
- Using more sophisticated features example, using the network header information in spam emails to detect location hiding / unusual emails
- Developing algorithms that process and transform input in different ways.( eg, recognizing misspellings such as p00l -> pool, w4tches -> watches ) in emails to classify better.

> Often features can be brainstormed in advanced, but this process is overlooked and random features are chosen. **Error analysis** is a technique discussed later which can help to this purpose.

[Further reading on system design for ML](https://www.coursera.org/learn/machine-learning/supplement/0uu7a/prioritizing-what-to-work-on)
