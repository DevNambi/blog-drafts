# Car Analysis - Hunting for Deals

This last may, I gave a presentation at the PASS Business Analytics conference on using data to make decisions. During that presentation I

I've covered this topic before. I've purchased my own car using data (LINKS), compiled a list of car buying best practices (LINKS), and even purchased a cheap car in 72 hours for my sister (LINK).

This time, I wanted answers to questions.

* What patterns can I find in safe vs. unsafe cars?
* What patterns can I find in cheap vs. expensive cars?
* What are the best deals for a car nowadays?


### Context is King

All behavior and patterns are influenced by the fundamental rules of their context. When buying a car, there are some obvious truths:


* The goal of a car is to redu the time/effort it takes to get from one place to another. It therefore competes with bicycles, walking, buses, subways, planes, trains, and ZipCar, Car2Go, and Lyft* for convenience and value. (LINKS)
* New cars are more expensive than used ones
* Not all cars are created equal. They differ in features, quality, safety, and especially reliability.
* However, cars of the same make and model will behave about the same, unless one of them has been damaged in some way.
* Popular cars are more expensive than unpopular cars


There are also some common truths. These are behaviors that happen *most* of the time, but not always:

* Cars: the price of a car drops by 15-25% each year for the first 5 years. 
* The biggest expense is the car itself; it's not gas, or insurance, or repairs, it's the cost of purchasing the vehicle.
* All of them wear down. They're machines. They have a finite lifespan; it's rare to hear of a car that lasts more than 300K miles or so, although cars with 200K miles on them are becoming fairly common.
* It cheaper to add fancy features (backup cameras, fancy speakers) after buying it than when buying the car.
* People normally drive around 12K miles a year. 200K mile car that's driven 12K miles a year will last around 16.6%. 5.9% a year.
* Most car purchases are made within 50 miles of where the owner lives.
* Car models undergo 'revisions'. A 2009 Toyota Prius and 2011 Toyota Prius don't look alike, because there were a bunch of changes made. Therefore, different model years for the same car will have different behaviors and safety.


I'll add one more truth, a psychological one:

**A car doesn't have to be an expression of your personality**. It can be just a box with an engine that gets you from one place to another.



## Safe and Unsafe Cars

* Do analysis


Right now you can buy over a thousand different car models. Some are brand-new, some are a bit older, but you can find all of them.

That's a lot, so we have narrow down the field. Luckily, most of us can do this pretty easily. 

(DEMO) Car makes and models in Excel

* Ensembling
* Conditional formatting in Excel
* Eliminating bad options vs. picking good ones

**Ensembling** a.k.a model averaging or bagging.

***Big problem***: How do we choose what make and model of car to buy? 
   * We know some reliable brands. Honda and Toyota are famous.
   * We ask our friends, family, neighbors, coworkers.
   * We rely on what has worked before. 

Anyone who followed the US presidential election in 2008 and 2012, this is what Nate Silver did to predict the outcome of all 50 states.

* This problem comes up all the time, in politics, medicine, finance, even cooking. Nobody has all of the information and no bias, but *collectively* there's enough information and the bias can average out. 
* Simple way: find the ratings from major car sites and average them. This is more reliable than any single site alone.

I did this for small cars & sedans last year.

* When there is no single reliable source of data, use the aggregate of different sources. 
   * Combining the ratings of 10 different car-review sites is more accurate than the ratings of any single site.


## Cheap and Expensive Cars

* Do analysis. Cost per mile. Cost of the car. TCO.
* What is the price difference if you want to carry more than 5 people? 
* What is the price difference if you want to haul things?
* What is the price difference if you want to buy a 'luxury' car brand?
* What is the price difference between new and used cars?
* Can you find used luxury cars at the same price as new econoboxes?

## Car Deals

Our question asks "what's a good deal". A 'deal' is one where there's high value for low cost. So we need to define cost, and value.

Value, though, is harder to define.  It's the value proposition of a car; it's transportation that saves time/energy compared to walking.

One simple way is the number of miles it can take us before it dies. 

The ratio of cost:value is therefore the # of expected miles vs. its total cost of ownership.

We can simplify this to $ per expected mile. 



(SWITCH TO TABLEAU, COST PER MILE, TCO PER MILE)


* Eliminating bad options vs. picking good ones
* Diminishing returns
DEMO - ROI, diminishing returns, cost:value


*Note: I did not mention Uber because of their recent behavior towards journalists. I don't believe companies that abuse their power should be given anything but scorn.*