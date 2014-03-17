# Titles

* You Don't Know ETL
* Dr. ETL Meet Hyde
* Dr. ETL Meet Data Hyde
* Dr. Data Meet ETL Hyde
* **Advanced ETL Using T-SQL**
* ETL Alchemy
* You Can't Handle the ETL

# Summary

One of the most common, complicated problems for data professionals is turning oddly-structured data into clean data. In this session we will look at practical, proven ways to solve to complicated data-transformation problems using T-SQL. 


# Abstract
One of the most common, complicated problems for data professionals is turning oddly-structured data into clean data. This problem is getting more and more common. Data is increasing in size and complexity, and the most efficient ways to analyze it are never the original format. 

In this session we will look at practical, proven ways to solve to complicated data-transformation problems using T-SQL. Examples include denormalizing historical dimensions (Type-2), billing system ETL, the bill-of-materials problem, multithreading interdependent ETL processing, and advanced change detection methods. You'll learn general techniques to tackle any data-transformation problem in your ETL processing.


@DevNambi Yes, please, you should still submit your session. Be clear about your main objectives, those will stand out.




# Session Notes

Versioning
Fact versioning
aggregation based on type-1 dimensions

ETL framework
	type-2 denormalization
	iterator vs. CBL
ETL parallelism
	digraph
'Real-time' ETL vs. not
	Comes with a warning.
	Retention trade-off
	No aggregation trade-off

Type-1 denormalization
Type-2 denormalization
Change detection

Relational for things it's not designed for
	Joint courses ETL

Evaluate tools to see if they do this


## Tools
	Powershell
	T-SQL
	SSIS
		Pitch the SSIS extensions
	Hadoop
	Python
	C# - *not* a good idea