# Sliding windows classifier

> In the OCR pipeline discussed earlier, we have 2 image related tasks to be done: Text Identification and Text Segmentation. These two can be done with the help of "Sliding Windows". 

Example: A Pedestrian detection sliding window classifier would take Supervised learning approach, with data y =1 (with pedestrians) and y = 0 without pedestrians. Say the size of this image or `window` is 82 X 36. By using this on an image with pedestrians and "sliding" or moving the window horizontally and vertically over the image, pedestrians present in the image can be identified by the classifier. 
The movement size is also known as the step size. 
A larger window size can be taken in the actual image and scaled down to 82 X 36 to classify correctly.

## Photo OCR pipeline example

1. Text detection: Similar to above example, a dataset of y = 0 (without text), and y = 1 ( with text) is obtained, and a classifier is trained on the same with a window size. The window is run over the original image, and classifies some of the image as text other as non text. Since text is grouped or linked to each other to form a word, Identified text is *expanded* by a few pixels. If aspect ratio is incorrect of the identified text, it is discarded.
2. Character Segmentation ( Seperation of each character) : Using the group of text identified above, a 1-D sliding window is run over the text. If the characters can be split in the middle (y = 1) , if it cannot y = 0. Using different step sizes, the characters are segmented and identified.
   

The above steps use sliding windows in the PHOTO OCR pipeline.

[Sliding windows lecture](https://www.coursera.org/learn/machine-learning/lecture/bQhq3/sliding-windows)