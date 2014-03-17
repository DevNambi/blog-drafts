# Database Development Series

- Blog post - process of query tuning
   § Long running vs run many times
   § Eliminate blocking as a culprit
   § What's left
      § Crappy hardware
      § Query the optimizer can't do much with
      § Unreasonable demands (billions of rows)
      § Firehose analogy
         § Fire hydrant is too small (hardware)
         § Hose is too small (query)
         § Too much water (rowcount)
      § Factory analogy
         § Raw ingredients (hardware)
         § Factory (query opt)
   § Both
      § Get estimated and actual query plan
      § Check using plan explorer
   § Long running
      § Get actual query plan
- Things that defeat the optimizer - case statements, functions, tables with data correlations, table variables

Things that the opt loves - string literals, number-based joins, tables with random distributions, a sensible number of tables to join

- Blog post on DB development best practices
- Blog post on using EXCEPT or INTERSECT to make sure query refactors return the same data
Best practices for ETL logging
   Include the spid
   Include @@rowcount
   Include sproc name
   Include dynamic SQL
   Include server name, login


   - Blog post idea - DB testing
   Regression testing
   Deployment validation
   Whitebox testing
   Black-box testing
- ME: go to datamanipulation.net/sqlquerystress - load tool

Blog post on release cadences
   The slowest wins. Everybody is forced to adjust for that.
