# Cheaper Cloud Computing

**Finish analysis by November 14th, the end of AWS re:invent**

## Spot-Pricing Analysis

* http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-spot-instances-history.html
* http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSpotPriceHistory.html
* http://gigaom.com/2013/10/08/bidding-strategies-arbitrage-aws-spot-market-is-where-computing-and-finance-meet/


**Boto**

http://boto.readthedocs.org/en/latest/ref/ec2.html

get_spot_price_history(start_time=None, end_time=None, instance_type=None, product_description=None, availability_zone=None, dry_run=False, max_results=None, next_token=None, filters=None)


**Dataset to Get**

* Instance type
* Region
* Availability Zone
* Date
	* Day of week
	* Day of month
	* Time of day (military time)
	* During business hours?
* Price per hour
* Discount vs. on-demand price (as a percentage)


**Features to Add**

* Date
	* Day of week
	* Day of month
	* Time of day (military time)
	* During business hours?

### Prediction Notes

* Number of hours before the price goes to X
* Trying to do either regression (hours until price goes above X) or classification (odds that price will go away )
* Do an independent prediction for each instance type


### Storytelling Notes

* Add instance info
	* EC2 CPus
	* RAM
	* Scratch disk
* Add derived info
	* Price per CPU
	* Price per GB of RAM
	* Price per GB of scratch disk
* Do this all in an IPython notebook? As a V2?

### Questions to Answer

* What's the cheapest instance to get for CPU-heavy work?
* What's the cheapest setup for RAM-heavy work?
* What's the cheapest setup for I/O heavy work?
* What are the deepest discounts to expect from spot instances?
* How much of a discount is this compared to GCE or Azure, since they don't have this feature?
* For a couple of prototypical workloads (use Netflix for an example), walk through the cost differential
* What factors matter when picking instances?
* What regions and AZs matter?
* Which are the cheapest regions?
	* How about AZs? How much does AZ choice matter?
* What days and times of day matter? What patterns exist?
* What are bad deals? Are GPU instances as bad as they claim?
* What are the gaps in the analysis
	* Not clear how many instances exist of each type, especially for the specialized ones.


### Post-Publish Notes

* Notify interested groups
	* Netflix
	* Ensighten
	* Scalyr
	* The UW cloud-computing group
	* eScience Institute