# Data Mining Assignment 2
Second Data Mining Assignment including Neural Networks and the analysis of a Portuguese bank dataset

[Here the final Report](https://github.com/patrickjacob/Data_Mining_Assignment_2/blob/master/Data_Mining-Assignment2.pdf)

### PART 1: CLASSIFICATION WITH NEURAL NETWORKS 
This part involves the following file:
[heart-v.arff](https://github.com/patrickjacob/Data_Mining_Assignment_2/blob/master/data_set/heart-v.arff)

For the neural network training runs build a table with the following headings:
1. Describe the data encoding that is required for this task. Howmany outputs and how many inputs will there be?
2. Develop a script to generate the necessary training, validation and test files. You might want to normalize the numeric attributes withWeka beforehand.
3. Using Javanns carry out 5 train and rest runs for a network with 10 hidden nodes. Comment on the variation in the training runs and the degree of overfitting.
4. Experiment with different numbers of hidden nodes. What seems to be the right number of hidden nodes for this problem?
5. For 10 hidden nodes, explore different values of the learning rate. What do you conclude?
6. [Optional] Change the learning function to backprop-momentum. Explore different combinations of learning rate and momentum. What do you conclude?
7. Perform a run with 10 hidden nodes and no validation data. Stop training when the MSE is no longer changing. Get the classification error on the training and test data. Comment on the degree of overfitting.
8. Compare the classification accuracy of the neural classifiers with the classification accuracy ofWeka J48 and MultilayerPerceptron.

### PART 2: NUMERIC PREDICTIONWITH NEURAL NETWORKS
This part involves the following file:
[heart-v.arff](https://github.com/patrickjacob/Data_Mining_Assignment_2/blob/master/data_set/heart-v.arff)
The task is to predict the value of the Age variable.
Build a similar table of runs to the one in the previous question.
1. Describe the data encoding that is required for this task. Howmany outputs and how many inputs will there be? What scaling or normalization is required?
2. Modify your script frompart 1 to generate the necessary training, validation and test files.
3. Using Javanns carry out 5 train and rest runs for a network with 5 hidden nodes. Comment on the variation in the training runs and the degree of overfitting. For this and subsequent tasks you can work with the network error directly. There is no need to re-scale the network outputs to the original range.
4. Experiment with different numbers of hidden nodes. What seems to be the right number of hidden nodes for this problem?
5. For 5 hidden nodes, explore different values of the learning rate. What do you conclude?
6. [Optional] Change the learning function to backprop-momentum. Explore different combinations of learning rate and momentum. What do you conclude?
7. Perform a run with 5 hidden nodes and no validation data. Stop training when the MSE is no longer changing. Get the classification error on the training and test data. Comment on the degree of overfitting.
8. Compare the classification accuracy of the neural classifiers with the classification accuracy ofWeka M5P and MultiLayerPerceptron.

### PART 3: DATA MINING 
The relevant files are: [bank-full.csv](https://github.com/patrickjacob/Data_Mining_Assignment_2/blob/master/data_set/bank-full.csv)
& [bank-names.txt](https://github.com/patrickjacob/Data_Mining_Assignment_2/blob/master/data_set/bank-names.txt)

The bank data is related to direct marketing campaigns of a Portuguese banking institution.
The marketing campaigns were based on phone calls. Often, more than one contact to the same client was required, in order to access if the product (bank term deposit) would be (or not) subscribed.
Your task is to analyze the data with appropriate data mining techniques and identify any “golden nuggets” in the data. You are expected to use classification, clustering, association finding, attribute selection and visualization in your analysis, or to explain why a particular technique is not relevant.
