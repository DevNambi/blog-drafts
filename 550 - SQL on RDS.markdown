# An Introduction to SQL Server on Amazon RDS

> How to calculate IOPS on your current server

EBS and its limitations

Planning for failure. AWS forces architecture to a higher standard.

### Blog Post Planning

* Replaces DBAs. More particularly, it moves them up the value chain, to more complicated operations' roles, or more development/business work.
* Put AdventureWorks on the server
* Come up with a mix of CRUD operations for AdventureWorks
   * Mix of procs and direct queries. That's normal.
* Use SQLIOSim (or something else?) for load testing.
   * Do it from a different EC2 instance in the same region. 
   * Test the network latency & bandwidth before doing so.
* Run this on multiple different machines in different regions. 
   * Look at Scalyr to see how many machines they needed for statistical significance (representative sample)
* Compare to SQL Azure
* Run from a different machine in same region
   * But first, measure bandwidth and latency
   * Use Powershell remoting - learn how first.

**Number of Tests**

* Per region, per instance size
* Enough for statistical certainty. Say, 20 each

**Price comparisons**
* Price per month
* Price per hour
* 99th percentile for each query. Price vs query runtime (inverse) vs concurrency.
