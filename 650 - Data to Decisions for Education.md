# Abstract

### Colleges, Majors and Tuition - using data make decisions

*Step 1: Ask questions*

*Step 2: Look at data*

*Step 3: Profit*

Data is growing faster than ever. Anyone who can use data to make decisions has a big advantage and is in high demand.

Join fellow data geek Dev Nambi (@DevNambi) and learn how to answer thorny questions about picking a college, analyzing majors, and looking at tuition. We'll use clever questions, free data, and common tools like Excel, T-SQL and Powershell. 

You'll also learn general techniques to make sound data-based decisions for any problem


# Introduction

Hi everyone, I'm Dev, and I'll be talking about some practical techniques to make decisions using data. We'll also go into a bit of theory behind these techniques and see why they're useful in many situations.

In my day job I'm a developer and data geek at the University of Washington in Seattle.  

If you have any questions or comments or want to chat latter, I'm @DevNambi on Twitter, and there's my email address.

We'll be looking at 3 different examples of complicated problems, and how we can use data to make these choices easier. So, let's get started.
(PAGETURN)
# Colleges

I suspect everyone in the audience has purchased a car at some point. I also suspect most people didn't enjoy the experience. It's one of the more unpleasant purchasing experiences, mostly because it's expensive, emotional, and the decisions aren't clear.

It's listed as one of the most unpleasant consumer experiences around, usually because it's expensive, emotional, and car dealers are assholes. It turns out this is because car dealerships have [political power](http://www.npr.org/blogs/money/2013/02/19/172402376/why-buying-a-car-never-changes). 
It's not a bug, it's a feature.


### First, identify a problem:
(PAGETURN)
1. I want a new Honda Civic or Toyota Corolla to get around.
(PAGETURN)
2. I want an affordable, reliable car to get around.
   * Add in the possibility of different cars
   (PAGETURN)
   * Add in the possibility of a used car
3. I want a convenient and cheap way to get around.
   (PAGETURN)
   * Add in the possibility of transportation that isn't a car.
   * Buses, bicycles, trains.

We've also just made our problem *bigger*. 
(PAGETURN)
It's very tempting to want to solve a problem *completely*, and this makes a problem so large and complicated that it's impossible to solve in a practical amount of time. The famous term for this is [analysis paralysis](http://en.wikipedia.org/wiki/Analysis_paralysis).

What we should do is limit ourselves to a reasonable amount of time. The rule I use is my hourly rate X 10. For me, for a $25K to $40K car, that comes out to around 62-100 hours, which is a week's worth of evening and weekends. 

(PAGETURN)
The reason for this is the Pareto principle.

We should also come up with a way to compare different items. For vehicles, cost-per-mile is pretty good. For other modes of transportation, use cost-per-day. For example, my car costs around $10/day including cost, insurance, gas, and maintenance. 


### Second, learn about the domain

Each problem has some fundamental behaviors. 

* Cars: the price of a car drops by 15-25% each year for the first 5 years. 
(PAGETURN)
* Cars nowadays last longer than ever before. 200K miles (16 years) is becoming common.
(PAGETURN)
* The biggest cost to owning a vehicle is depreciation. 
(PAGETURN)

* Since there is no set price for a given type of car, you can make dealers haggle for your money. Call 6 of them, and make them undercut each other's price.
   * 'Dealer B quoted me $15K for a car like this. Can you do better? Oh? $14,500? Great! I'll get back to you'
   * 'Dealer A quoted me $14.5K for a car like this. Can you do better? Oh? $14,300? Great! I'll get back to you.'

(PAGETURN)
* Car dealers aren't trustworthy. Relying on one for advice is going to get you ripped off, often for thousands of dollars. This is an example of the principal-agent problem. A principal is the consumer. 

(PAGETURN). They have their own best interests at heart, but not necessarily the skill or experience to do it right.
(PAGETURN)
The agent is the person they hire or trust to do what's right for them. Any professional is an agent. Doctors, lawyers, car dealers, DBAs, software developer; any specialist.
   * The problem, of course, is that the agents have their own agendas. They can make money by serving their customers, or by ripping them off.
* Be careful w/ folks that have your money.

**Ensembling**

***Big problem***: How do we choose what make and model of car to buy? 
   * We know some reliable brands. Honda and Toyota are famous.
   * We ask our friends, family, neighbors, coworkers.
   * We rely on what has worked before. 
(PAGETURN)
* This problem comes up all the time, in politics, medicine, finance, even cooking. Nobody has all of the information and no bias, but *collectively* there's enough information and the bias can average out. 
* Simple way: find the ratings from major car sites and average them. This is more reliable than any single site alone.
   * Anyone who followed the US presidential election last year, this is what Nate Silver did to predict the outcome of all 50 states.

(PAGETURN)

I did this for small cars & sedans last year.

* When there is no single reliable source of data, use the aggregate of different sources. 
   * Combining the ratings of 10 different car-review sites is more accurate than the ratings of any single site.

**Collect the Data**

(PAGETURN)

* This is getting easier nowadays, because the amount of data in the world is just exploding. 
* However, very little of it is clean or easy to use.
   * 80% of your time will be cleaning up data. 
   * For small problems I use Excel. 
* Luckily there are big sites for this. [Craigslist](http://vancouver.en.craigslist.ca/) is the most famous. [AutoTrader](http://www.autotrader.ca/) is another good site.
   * I did a quick search for 'Honda Civic' in Vancouver and found over 2K listings.
   * This is where you'll spend a lot of your time, which is collecting the data.

[GO TO TABLEAU PUBLIC LINK](http://public.tableausoftware.com/views/SpecificCars/CarDashboard?:embed=y&:loadOrderID=0&:display_count=no)

**Analyze the Data**

* To analyze the data, we have a bit of a tricky problem. Let's say we have 2 cars:
   * 1 has 40K kilometers and is 3 years old and is on sale for 15K
   * Another has 60K kilometers, is 4 years old, and is for sale for 13K.
   * All purchasing decisions come down to price vs. value. So let's find out the value of each car, which is miles left on the car.
   * Which is better? Come with an equation to make them comparable, and then compare it with the price. Excel is great for this as well.
   * I did this a while ago for my car, and produced a scatterplot.
   * It's pretty obvious which cars are the best deals...they have the best value and the lowest price.
   
**Reverse bidding**

So now we know which cars are the best deals. There's some margin for error here, but you'll probably get a good deal this way.

Now comes the part most people hate: car dealers. The term 'used car salesman' is literally what people think of when they think of someone untrustworthy. Lucky for us, most of their influence goes away over the phone.

Best way to get a deal? Find 5 good car deals. Call the dealers, and ask for their best quote over the phone or email. Get the best quote, and then call the *other* dealers, and ask them to beat it. Do this 2 times, and then go with the best option.

This uses a few fun tactics that car dealers would prefer you didn't know about:

1. It's your money. Dealerships compete for your business, so make them work for it.
2. It's not about emotion. By the time you walk onto a dealership for a test-drive you should already know that the math is in your favor. Don't be afraid to walk away if something feels wrong, or if you feel pressured.

**Conclusion**

So, what did we find about decision-making?

1. You have limited time to make decisions. Scale the amount of time to the importance/cost of the decision. 
2. The more time you spend on a decision, the less value you add. Remember the 80/20 rule.
3. Always think of the options, and evaluate them using math. 
   * Find a way to compare different options using the same numbers.
4. Know the domain, so you can know what questions and assumptions to ask. You can also find the deals using some simple math.
4. When there isn't a single trustworthy source of information, get information from many different sources and *ensemble* them.
5. Think in terms of probability. Getting the *very best* deal is hard. Getting a *great* deal is a lot easier.
6. Collect data from independent sources and clean them up. This is most of your work.
7. Analyze the data visually. Look for 'wait, that's odd' moments. Identify the top 4-5 choices.
8. Make people bid for your business using low-pressure tactics. 


# Health Care

Now we move to health care. I had a much bigger section for the folks in the US about picking doctors and hospitals, but Canadians don't have that problem. Picking the wrong hospital in Canada doesn't mean you get bills that force you to sell your house.

(PAGETURN)

### Houses

(PAGETURN)
1. Limited amount of time. A house costs anywhere from $230K to $450K for a house. That comes out to 575 to 1125 hours for me (14-28 weeks). That covers everything
   * Loans & financing
   * Looking at neighborhoods
   * Exploring houses
   * Paperwork
   * Offers & legal

(PAGETURN)
3. Options. Apartments. Condos. Renting a house. Living on a boat.
   * Know the Domain.
   * Iron law: house prices move relative to family income. 
      Nobody should buy a house that has a $3K monthly mortgage when you can rent it for $1K.
   * House prices don't outperform an index fund over time. They're lousy investments.
   * House prices change dramatically based on school quality.

4. Elephant in the room
   * Houses are dramatically overpriced in Vancouver.
   * Other places are OK.

(PAGETURN)

5. Collect the data. It's easy to get information about houses for sale.
   * How do you compare different houses?
   * Compute a score
   * Matrix prioritization
   * You define what's valuable to you.

6. Make people bid for your business.
   * Real-estate agents are like car dealers.
   * You can work with several different agents. Sometimes they don't like this. Too bad.