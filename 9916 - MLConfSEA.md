# MLConf Seattle

## Josh Wills, from Cloudera

* Feature Engineering
* Loves this conference because it's a good mix of industry-oriented academic people, and people in industry with a strong academic background
* His talks are fluff and people w/ cats.
* EricV - invented generalized 2nd price auction, so he's famous in ad circles. He's a computer graphics Ph.D.
* With large systems, you have to not care about the huge amounts of money involved. 
* Data science - mostly cleaning and preparing data. 

**Hiring at Dropbox**

* Give a data set
* Any two hours you want, whatever tools you want
* Present at the end of it.
* Key to make money in life: people will pay you money to do things they find tedious and boring and un-fun. Do it, and that's your career.

#### Deep Learning

* A threat to all of the feature engineering folks. 
* New job: tune billions of parameters you don't understand.
* We kept bootstrapping a big secret for the last 30+ years
* It's still early days for deep learning. Text, speech-based problems are still very rough.
* Feature Engineering - providing context that's not obvious in the data.
* Data is like an archeological record - we have to put the meat on those bones.
* Deep learning works well when there's no additional info in the data. 

**ME** Paper to read - Brainwash, about building an IDE for feature-engineering problems. 
* What they came up with is basically protocol buffers. 


#### Operational/Analytical Mismatch

* Online - 1 event at a time
* Analytical - batch processes
* The translational step is always a pain
* Supernova schema - create a record for every entity in your system. Inside you put the static attributes, and then you put arrays of records that's events of records. 
	* Like dimensions with the fact stuff embedded
	* This is Twitter, Mongo, NoSQL store approaches
* Exhibit is JoshW's approach. Let's you run a bit of SQL inside each record, and then aggregate across all records.
* http://github.com/jwills/exhibit

## Shiva Amiri (CPO), RTDS

* RTDS - real time data solutions
* Incorporating real-time into analytics/ML
* Boring, nap


## Anima Anandkumar, UC-Irvine

* Tensor methods instead of backpropagation for neural networks.
* Matrices and tensors as data structures
* Tensors - for higher-order relations. Think of them as higher-dimensional matrices
* What we know about right now - spectral decomposition. PCA is the most widely known. 
* Tensor with million-by-million features. It can be reduced to a lower-dimensional representation. 
* Algebra is much more involved, sometimes NP-hard. 
* Some tensor decomposition algos are embarassingly parallel for cloud-based systems (Spark), GPU systems
* Intriguing, but it makes my brain hurt. 

#### Challenges in Learning LVMs

* Max likelihood is NP hard. EM-search is NP hard
* Tensor methods yield guaranteed learning for LVMs
* Handles multi-model, overlapping-cluster approaches really well. 


* All problems in computer science can be solved by another level of indirection
* All problems in ML can be solved by another level of dimensionality, except for the problem of too many dimensions.
* All problems in ML can be solved by higher order processing, except for the problem of higher order processing.


## Sergei Razin, SIOS

* Using ML to run a data center. 
