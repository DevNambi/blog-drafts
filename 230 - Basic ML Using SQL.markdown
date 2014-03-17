# Machine Learning using SQL

### Key points
* Move the computation to the data
* People already have databases. Other languages / tools are hard to find. Also then you have to keep data sets in set, deal with extracts and such, and the result often goes back *into* an applicatio or database for use.

### The Bimodal toolset (size does matter)
There are roughly 2 sets of tools nowadays. Smaller data sets (less than ~10GB or so) can fit into memory, and can be analyzed on workstations using tools like R, Python or Julia. (PROVIDE LINKS). **Large** data sets (greater than 1TB) are best analyzed using 'big data' (distributed computing) tools like Hadoop or Mahout.

Between the two is where *most* data sets currently fit. They'e too big to easily fit into memory, and too small to benefit from the massive scale of Mahout. They will fit into 'big data' solutions, sure, but at smaller scales like this you run into overhead challenges.

If only we had a flexible, powerful, possibly interpreted language that would work on datasets between these two sizes. It turns out we do: *SQL*.

There is one other option: sampling. It's perfectly viable to take a random sample of a large data set, confirm it has the same distribution properties, and work on it using something like R or Python.

For many machine learning algorithms, SQL works just fine. Let's look at some examples of how to do this.

http://arcanecode.com/2013/05/07/updating-adventureworksdw2012-for-today/

http://www-users.cs.umn.edu/~sarwat/RecDB/


### Matrix math in SQL

A *large* amount of machine learning algorithms use matrix mathematics. Techniques such as Principal Component Analysis use it extensively.

**Matrix addition**

Spare and dense 

Use data volumes too big for R

**Matrix subtraction**

**Matrix multiplication**

**Matrix division**

**Matrix transposition**

**Eigenvalues**

**Eigenvectors**



### TF-IDF

**Cosine similarity**


### K-Means

**Euclidean distance**

? How to measure variance covered?
? How to measure variance left?
? How to use functions besides Euclidean distance?
? 


### Association Rules

This is used for things like 'market basket analysis'. If you buy chips at a grocery store, what *else* are you likely to buy? Turns out it is chips. If you buy diapers at a grocery store, what are you likely buy? Turns out it's beer.

Association rules are designed to work on a transactional table. Luckily SQL databases tend to have several of those. Let's use an example transaction table from the AdventureWorks database, [TABLE NAME]

### Bayesian Math



### Decision Trees

### Statistics

* Percentiles
* Boxplot
* Median
* Mode
* Distribution
* Correlation
* T-test
* Mutual information criterion
* Rolling average
* Trailing average   