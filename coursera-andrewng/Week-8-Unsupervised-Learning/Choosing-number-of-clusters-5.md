# Choosing the number of clusters

> Choosing the number of clusters in K means algorithm can be tricky, and vary from problem to problem. There is no set "algorithm" or correct way for choosing the number of clusters for a particular problem. Often, it is the most practical to vary the different business metrics involved and choose the number of clusters according to that.


## Some common ways of choosing the number of clusters K

* Visualizing the data: Often, by manually visuallising  the data and the number of "possible" clusters of the data , one can come to an approximate conclusion of the clusters in the data, but this can vary on the basis of each individuals perception.
* **ELBOW METHOD**: By plotting the curve of the clusters versus the cost function, one can observe the cost function where it goes down rapidly in response to the clusters size incrasing. However, in practice this is not used very often because a lot of the plots can be turn out to be much more smoothly decreasing, and no *real, determining* choice of the clusters can be chosen. This method is worth a shot,but commonly doesn't give a concrete solution.
* One suitable and common way to choose the number of clusters is to think about the downstream / later business purpose that needs to be solved. This can vary problem to problem. For example, number of markets and how to serve them vs the costs in Market segmentation , or number of clusters / usage of power etc in Computer datacenter clustering. For eg, in the tshirt sizes clustering problem, Clusters of **S,M,L** (K=3) can be chosen or **XS,S,M,L,XL**(K=5) can be chosen. Based on market research / costs associated with each number of clusters, the choice can be made on the number of clusters we want from K Means. Similarly, in am image compression problem, the choices could be:How well you want the image to be vs how much you want to compress it. 

> Summary of last method: Think about the purpose of running K means. How does the value of K serve the later purpose of K?


[More on choosing the number of clusters for K means](https://www.coursera.org/learn/machine-learning/lecture/Ks0E9/choosing-the-number-of-clusters)