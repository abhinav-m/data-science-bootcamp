# Photo OCR Problem description and pipeline

Photo OCR -  Photo optical character recognition system.

How to understand the text in a given picture( can be used to classify and store pictures / meta about pictures etc)

A pipeline of a Photo OCR application might be as follows:

1. Text detection in image.
2. Character segmentation of individual characters ( seperation and distinction from other characters )
3. Character classification - What characters are present in the pciture?

Above is the example of an ML pipeline, where each task may be an individual `module` that an engineer or a team of engineers might pick up.

Before an ML problem is picked up, it might be worth considering the pipeline of the problem ( modules to break down and divide the problem into)

[Photo OCR case study](https://www.coursera.org/learn/machine-learning/lecture/iDBMm/problem-description-and-pipeline)