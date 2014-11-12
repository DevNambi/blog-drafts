# Cheaper Cloud Computing

**Finish analysis by November 14th, the end of AWS re:invent**

## Spot-Pricing Analysis

* http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-spot-instances-history.html
* http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSpotPriceHistory.html
* http://gigaom.com/2013/10/08/bidding-strategies-arbitrage-aws-spot-market-is-where-computing-and-finance-meet/
* http://santtu.iki.fi/2014/03/25/ec2-spot-price-minimum/
* http://santtu.iki.fi/2014/03/20/ec2-spot-market/
* http://santtu.iki.fi/2014/03/19/ec2-spot-usage/
* http://recode.net/2014/11/12/amazon-cloud-chief-andy-jassy-dismisses-talk-of-price-war/


**Boto**

http://boto.readthedocs.org/en/latest/ref/ec2.html

get_spot_price_history(start_time=None, end_time=None, instance_type=None, product_description=None, availability_zone=None, dry_run=False, max_results=None, next_token=None, filters=None)


**Dataset to Get**

* Instance type
* Region
* Availability Zone
* Date
* Price (per hour, in US dollars)



**Features to Add**

* Date
	* Day of week
	* Day of month
	* Time of day (military time)
	* During business hours?
* Instance type
	* Number of eCPUs
	* Amount of RAM
	* SSD amount
	* HDD amount
	* Has high-speed networking
	* On-demand price per hour
* Discount vs. on-demand price (as a percentage)
* Add derived info
	* Price per CPU
	* Price per GB of RAM
	* Price per GB of scratch disk (SSD)
	* Price per GB of scratch disk (HDD)
* Add derived info
	* CPUs per $
	* GB of RAM per $
	* SSD per $
	* HDD per $

### Prediction Notes

* Number of hours before the price goes to X
* Trying to do either regression (hours until price goes above X) or classification (odds that price will go away )
* Do an independent prediction for each instance type


### Storytelling Notes

* Do this all in an IPython notebook? As a V2?



### Post-Publish Notes

* Notify interested groups
	* Netflix
	* Ensighten
	* Scalyr
	* The UW cloud-computing group
	* eScience Institute
	* UW Physics department
		* https://www.youtube.com/watch?v=mKElyNabc0A&feature=youtu.be
		* Kevin Jorissen, Research Assoc there.
		* Fernando Villa, Research scientist there
		* They focus on cluster instances