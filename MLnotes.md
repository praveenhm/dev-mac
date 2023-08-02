
### Transformers:

When people say “Large Language Models”, they typically are referring to a type of deep learning architecture called a Transformer. Transformers are models that work with sequence data (e.g. text, images, time series, etc) and are part of a larger family of models called  Sequence Models. Many Sequence Models can also be thought of as Language Models, or models that learn a probability distribution of the next word/pixel/value in a sequence: 

What differentiates the Transformer from its predecessors is it’s ability to learn the contextual relationship of values within a sequence through a mechanism called (self-) Attention. Unlike the Recurrent Neural Network (RNN), where the arrow of time is preserved by processing each time step serially within a sequence, Transformers can read the entire sequence at once and learn to “pay attention to” only the values that came earlier in time (via “masking”). This allows for faster training times (i.e. the whole sequence in parallel) and larger model parameter sizes. 

#### Semantic Search:

Difference b'n keyword search vs semantic/Neural search:
Traditional search such as Elastic Search and Lucene rely primarily on bag-of-words retrieval and keyword matching e.g. BM25, TF-IDF, etc. 
Vector databases such as Milvus allow for _semantic_ search.

Large content semantic search:
You use a vector database with a query similarity search to find portions of documents that might be relevant to your prompt, rank them, take the top n, put them into the context and run through your LLM to generate an answer to your question.



#### Log:

Log makes the large numbers smaller and the smaller numbers larger so that you don't have these problems.
multiplication of numbers turns to addition when you log the number


#### Deep Learning Explained:

In machine learning (especially deep learning or neural networks), the 'training' is done by using Stochastic Gradient Descent. These gradients are computed using Backpropagation. Backpropagation requires you to do a backward pass of your model (typically many layers of neural weights) and thus requires you to keep in memory a lot of intermediate values (called activations). 

However, if you are doing "inference" that is if the goal is only to get the result but not improve the model, then you don't have to do the backpropagation and thus you don't need to store/save the intermediate values. As the layers and number of parameters in Deep Learning grows, this difference in computation in training vs inference becomes signifiant. In most modern applications of ML, you train once but infer many times, and thus it makes sense to have specialized hardware that is optimized for "inference" at the cost of its inability to do "training".


#### Deep Learning Optimizations:

Offloading is another popular method for running large LMs when you don't have the GPU memory to fit the entire model. Imagine you have an A100 GPU with 80 GB memory and want to generate text with BLOOM, a 70-block transformer model with ~2.5 GB of weights per block. For each token, offloading will load the first 1/3 of the model (~27 blocks) from RAM/SSD to your GPU memory, run a forward pass through them, then free the memory and load the next 2/3, and so on.
It turns out, Petals is faster than offloading even though it communicates over the Internet (possible, with servers far away from you). That's because Petals only sends NN activations between servers (a small amount of data), while offloading copies hundreds of GB of NN weights to GPU VRAM to generate each new token.



==============old notes=========================


#### ML-notes

Some machine learning algorithms like linear and logistic regression can suffer
poor performance if there are highly correlated attributes in your dataset.

Feature scaling like standardization helps gradient descent learning to converge more quickly.

Classifiers:

	 Binary - Logistic regression(maximum-likelihood algorithm), SVM
	 multi-class - LDA(Bayes algorithm), SGD, RandomForest, Naive Bayes

Metrics classifier:

- Classfication Accuracy.
- Logarithmic Loss.
- Area Under ROC Curve.
- Confusion Matrix.
- Classfication Report.

cost function:

	 linear regression - gradient descent
	 logistic regression - Maximum likelyhood (c=100)
Classifier:

linear:
- Logistic Regression.
- Linear Discriminant Analysis.

nonlinear machine learning algorithms:
- k-Nearest Neighbors.
- Naive Bayes.
- Classication and Regression Trees.
- Support Vector Machines.

Regression:
- Linear Regression.
- Ridge Regression.
- LASSO Linear Regression.
- Elastic Net Regression.
Then looking at three nonlinear machine learning algorithms:
- k-Nearest Neighbors.
- Trees.
- Support Vector Machines.


Algorithms:

	SVM Linear - 
	  SVC(kernel linear , c=1.0)
	 SVM Non-linear - kernel SVM for linearly inseparable data eg: bowtie
	  SVC(kernel='rbf',gamma=0.10,c=10.0)
	 DecisionTreeClassifier(criterion='gini',max_depth=4,random_state=1)
	 RandomForestClassifier(criterion='gini',n_estimators=25, random_state=4)
	 KNN - KNeighborsClassifier(n_neighbors=5, p=2, metric="minkowski")
	// real-value samples use  Euclidean distance p=2, 
	// manhattan distance p=1


regularization: 

	Shrinkage - Ridge regression will decrease their contribution, but not set them to zero . 
	Sparsity - penalization approach, called Lasso, can set some coefficients to zero. 

	Regularization applicable : logistic regression
	regularization not applicable : decision tree, KNN use feature selection and dimenisonality reduction

	Kernel trick: 
	Any linear model can be turned into a non-linear model by applying the kernel trick to the model: replacing its features (predictors) by a kernel function

	Non-linear - user kernel methods, project them onto higher dimensional space(gaussian kernel =rbf) 
	  eg: kernel SVM and kernel PCA



###Framework

The basic, fine tune the model as follows:

	Drop all the columns with missing values.
	Encode Thumbs Up/Down fields: [ON, OFF, NotAvailable] -> [1, -1, 0]
	Drop a free text input that didn’t have a clear pattern.
	One-hot encode all the categorical features.
	Randomly select the training and test sets.
	Perform simple linear regression.

Build library for the following components:

	Data Readers.
	Preprocessors.
	Model Trainers.

add the following steps for winning approach:

	Scale the numerical values.
	Create exponential features for year and mileage.
	Select the training and test sets with manufacturer distribution using random stratified sampling.
	Train 5 different models.
	Validate the results with fresh data, taking in consideration the current month.

Final results were the following:

	Simple Linear Regression: R² score: 3.0286 × 10 ⁻¹⁹
	Lasso Regression: R² score: 0.893110
	Random Forest: R² score: 0.790125
	XGBoost: R² score: 0.778196
	Tensorflow: R² score: 0.916127
	No more negative predictions.
	Deep Learning was the leading algorithm.



Multi-class classifier : SGD classifiers, Random Forest classifiers, and naive Bayes classifiers. 
Binary classifiers(strictly) : Logistic Regression or Support Vector Machine classifiers.

* Data Readers.
* Preprocessors.
* Model Trainers.
