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

http://tradeinqualityindex.com <- HOLY CRAP, THIS IS AMAZING
http://www.mrmoneymustache.com/2011/09/30/is-a-costco-membership-worth-the-cost/
http://arstechnica.com/cars/2015/05/meta-analysis-finds-self-braking-cars-reduce-collisions-by-38-percent/
http://consumerist.com/2015/05/20/gm-that-car-you-bought-were-really-the-ones-who-own-it/
* http://money.usnews.com/money/personal-finance/articles/2015/06/09/startups-offer-new-ways-to-buy-and-sell-used-cars
* http://www.nytimes.com/2015/06/24/business/senate-commerce-hearing-takata-airbag-nhtsa-general-motors.html
* https://medium.com/@ade3/the-zombie-mobile-b03932ac971d
* http://wolfstreet.com/2016/11/22/strongest-pillar-of-the-shaky-us-economy-has-cracked/

* https://publish.manheim.com/en/services/consulting/used-vehicle-value-index.html <- also VERY useful for used cars


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



* http://www.nytimes.com/2015/03/27/automobiles/their-ranks-thinned-the-surviving-car-dealerships-thrive.html?ref=automobiles
* http://www.nytimes.com/2015/03/31/business/dealbook/prosecutors-scrutinize-minorities-auto-loans.html?ref=automobiles
* http://www.nytimes.com/2015/04/02/business/us-auto-sales-march.html?ref=automobiles
* http://www.nytimes.com/2015/04/23/technology/personaltech/an-online-tune-up-for-the-used-car-marketplace.html
* http://www.japantimes.co.jp/news/2014/04/07/business/gods-edging-out-robots-at-toyota-facility/
* http://www.safetyresearch.net/blog/articles/toyota-unintended-acceleration-and-big-bowl-“spaghetti”-code
* http://blog.instamotor.com/why-dealership-used-cars-cost-more/

