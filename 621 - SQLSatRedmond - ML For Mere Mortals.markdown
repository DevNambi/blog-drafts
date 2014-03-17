# Machine Learning for Mere Mortals


### Remember, Dev:

* This is just a conversation
* Imagine I'm chatting with friends
* Breathe
* This is going to be fun.
* Wear a nerdy t-shirt

## To Do

* Learn from the best
	* A lot of stuff on history
	* Makes it approachable to developers. Code examples from Python, etc
	* Talks about data scientists and what they do.
	* Lots about artificial intelligence.
	* Goes over entity disambiguation
	* Uses concrete, approachable examples to get audience to understand
	* Goes back-and-forth, weaves the topics together.
	* What order does session go in?
* Work on transitions
* Make it graphics-heavy
	* Add in kitten pictures
* Use index cards with notes

**Prevalence** 

* Include graph of data volume over time. Compare with population over time.
DRAW A DIAGRAM: Data + Analysis/Curiosity = Help with Decisions. Show the bottleneck diagram.

**Further Resources**

* Update http://devnambi.com/data-science/ with getting started resources
	* 'Standing on the shoulders of giants' - it's easier for the next generation.
	* We don't need to be as brilliant as Dennis Ritchie to write code. We don't have to be as brilliant as Pedro Domingues (LINK) to do ML
	* Hilary Mason's link

























# Introduction (2:01)

Hi everyone, I'm Dev, and I'll be talking about the basics of machine learning. 

In my day job I'm a developer and data geek at the University of Washington. 

If you have any questions or comments on want to chat latter, I'm @DevNambi on Twitter, and there's my email address.

We'll be going on a bit of a trek, looking at a bit of history, seeing why right now is so exciting for ML, and guessing where the field is going. We'll link it back to databases and SQL.


[Tie it in w/ Buck's intro. Have a seamless transition. Include a blurb about ML]

The way ML works is: use data to figure out the rules. No if-then statements or loops. Groups.
* "How do we build machines/programs that learn from data, and get better the more data we feed them?"


# Prevalence (6:23)

Machine learning is used everywhere. 

Much of the time we don't even notice. 
* Finance (algorithmic trading)
* Predict how the group will behave (capacity planning)
* Purchasing behavior (retailers)
* eDiscovery


Sometimes we notice and like the result. Amazon, Netflix, Pandora


Other times we notice and hate the result, 
* Benign, like online ads.
* Used by health insurers to pick who's going to get sick, so they can drop their insurance
* Target used it to predict who was pregnant, often before they even knew.


It's used for crazy, off the wall projects. Awesome.
* Computer vision (self-driving cars, facial recognition, Kinect)
* Computer audio (voicemails with transcripts)
* Artificial intelligence agents (Siri, Google Now)
* Funny stuff (hunter-seeker RC cars)

 
# History (4:45)

* Very old field. It still has the word 'machine' in it.
* Comes from the idea that thinking is a set of rules that can be expressed in a computer.
* Started with a [paper on machine thinking](http://en.wikipedia.org/wiki/Computing_Machinery_and_Intelligence) in 1950, by Alan Turing.
* Turned to the field of artificial intelligence, which is mostly a failure.
* Algorithms invented in the 60s and 70s are popular now. Decision trees were invented in '55. K-Means was '57. Random forests, '95. Bayesian math is 1760. Linear regression: 1886.

* Why is it gaining momentum now?
* The volume of data in the world is exploding. The capability to turn it into insight isn't. ML can get better results with more data. It exploits a growing surplus
* However, practitioners of the art aren't growing as quickly, and there's no set of automated tools for it yet. That's why data scientists are in such demand.
* Going from 'what happened yesterday' (traditional BI) to 'what is going to happen tomorrow' and 'what should we do differ  ently do get there'?
* Right now is an insanely exciting time for ML
* This is great, not enough ML people. Like CPU vs disk. 
* Dirty secret of big data: people are the bottleneck, not the data/tools.
* 'Big Data' means nothing if you can't put it to use. Link to BrentOzar PLF article about that. Vendors and consultants saying otherwise are selling you snake oil.


# Persistence (1:00)

That sounds really intimidating. It's not. 

* CS - repeatedly hitting an intellectual wall, climbing over it, and repeat ad nauseum
* Best students - adapt and overcome. Play with curiosity until you find an answer
* You are developers and IT pros. Happens all the time. 


# The Matrix (4:07)

Now we're going to jump into math. 

* Vast majority of machine learning uses matrix math. 

Let's say we have 2 students, and 2 classes. For the 3rd student, which one is more similar? Right, student 1. 

You get a concept of distance. Key concept...you can compute the 'distance' between any 2 things.

* The Matrix is everywhere (matrix math, notion of distance)
* Table of servers. Use CPU and RAM.
* Comparison of web apps. List technologies, audience, 
* Comparison of startups. List technologies, audience, valuation, and cluster.

* Documents - Word & document
* Images - Image & pixel location
* Site - User and Action
* Purchases - Customer & Item


#  Math (2:00)
- It's not hard.
- Writing code is math. Just another set of semantics.
- We think about math all the time anyways. Statistics are in SQL Server.
- We use probabilities. We use indexes as a way to probabilistically increase the chance that a query will finish in a reasonable amount of time.
- SUM() is the same as E[]
- Bayes Law
	P (B | A) = P(A | B) X P(B) / P(A)
	Example: 
	This works for your spam filter


# Clustering, unsupervised learning

* K-Means, invented in 1957

- Demo (k-means)
	School scores
* Can be used to build recommendation
* Talk about clustering as a form of unsupervised learning. You don't know the groups you're going to get.
- Demo (k-nearest-neighbor)


# Decision Trees, supervised learning

- Supervised learning is about classification, where we have a bunch of data with labels, and our goal is to take new data and assign the correct label to it.
- A spam filter is a binary classifier; it's either spam or not.
- Demo (random forest)
	* School info?
	* Spam?
	* Food data?
* Can be used for prediction.
* Used for classification. You're trying to get 


# Entity disambiguation

Once we have a bunch of data classified, people will start asking us for information.

When someone says 'Apple', do they mean the company or the fruit? Humans do this w/ context. How does a computer?

Let's use a different example. Someone is talking about 'Buck'. Do they mean a dollar? An angry horse? Or some guy walking off the street?




# Cheat Sheet

* BI vs machine learning / data science. Predict the future vs. analyze the past.
* Build products from data. Long way from reports to Netflix's 'recommended movies'

* Use reference from Data Science class
* This sounds like a secret sauce. It's not. It's a set of techniques that can help with increasingly common situations, but it's easy to get wrong.
* Standard data warehouses and BI aren't cutting it. 
* It's about the scientific method
* You don't know what's going to work ahead of time
	* Experience makes you stop asking stupid questions. But you can get jaded
	* Curiosity helps you ask stupid questions.
If you work on these kinds of problems, then please contribute.
	Use it for a non-academic setting.
ML - how do you know when you've won?
	Cross-validation
	Accuracy testing
	Some things are *very* hard to qualify. When people are involved
	Ask ahead of time
* Totally OK to think in code first, and math second
	* They're equivalent
* Do I include stuff about cross-validation? Prediction? Limitations?
	* Include examples if I do
	* cross-validation: how to show overfitting?
	* Prediction - housing bubble models
	* Limitations - you are limited by your data, and your assumptions.
	* Is that bias? We deal with it all the time.
	* People use heuristics to narrow down their choices. All the time. It's a source of bias.
	* Mention 'Thinking Fast and Slow'

# Further Resources

There are a ton of resources to list here. I keep an updated list for myself at the above link.

We're one of the 3 hotbeds for ML talent in the US; the others are the Bay Area and NYC. The UW has some of the most brilliant ML researchers in the world


## TL;DR;

# Brains and Bias

-  They ask questions
	This is the hardest to find.
	Ask questions about human behavior
- Design for human beings is insanely important
GENERAL WISDOM - ask the crazy questions of your data.
	Fuck it. Ship it (sometimes)


### Abstract

Machine learning is the science of building predictive models from available data, in order to predict the behavior of new data. It is the practice of getting computers to act without being explicitly programmed. 

ML is widely used in web search (Google, Bing), recommendation engines (Netflix and Amazon), computational vision (self-driving cars), and natural language processing (Google Translate, auto-grading essays). 

This will be a gentle introduction into the world of machine learning. We will cover common techniques such as clustering, supervised vs unsupervised learning, and learning at scale. Finally, we'll explore some examples of machine learning in the real world.