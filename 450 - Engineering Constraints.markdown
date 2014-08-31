# Engineering with Constraints

We live in a world of constraints, trade-offs, and complex decisions. It is human nature to use heuristics and previous experience to limit our own choices and make rapid decisions (LINK TO BOOK ABOUT THIS, IN MY ROOM).

Data structures in real life. Analogies to help people learn

### Time X fn_Y(Complexity) X fn_X(People) X fn(Motivation) X fn(Overhead) = constant

When building software, there are some inherent limits. 

Venn diagram between speed, features, code debt/cleanliness/bugs

What is the relationship between tools, brains, complexity, opportunity, and judgment?

Blog idea = data quality, requirements, brains - comm overhead = constant

The implications are unsettling. 

Human factors in engineering
   • Nonlinear factors
   • Non-determinism
   • Error rates

#### Approach 1: Use documentation to reduce time required

The idea is noble: use documentation to reduce complexity. Unfortunately, it's also not well thought out. Documentation has inherent bias, and is usually out of date a few minutes after it's written. The only exceptions to this appear to be documentation that is automatically rebuilt from the code. After all, **The Code Is The Law** (LINK). 

#### Approach 2: Add more people to speed things up

Anyone who has read the Mythical Man-Month (LINK) knows this limitation. People don't scale. The communication overhead involved rapidly makes it harder . This is especially true with unskilled or unmotivated people; it's often faster without them than with them. 

#### Approach 3: Make things simpler

This is a great idea in general. Unfortunately, making things *too* simple runs into the opposite problem: it's hard to do anything without adding complexity.

#### Approach 4: No process

This is also a decent idea. However, it is dependent upon second-order effects of your engineering team. They need to be adaptable, self-critical, and . The gains are often increased speed as inefficient processes are removed. 

Adds overhead, process
   Get enough of the big picture, get the details, and GO
   Best way to go fast is to go slow, and pare down to the essentials
   Get better at working not by studying how to work, but by working and using reflective practice
Formality is overrated.

#### Work everybody harder.

This may work in the short term. In the long term, it is less efficient exhausting, attrition and morale problems creep up. There are also physiological limits; it's statistically unlikely that your engineering team can maintain 20-hour days or 100-hour weeks and stay mentally sharp.

Also, it sends a terrible message. Any executive or manager thinks their employees should feel grateful for a grueling job at a pittance doesn't understand human psychology. People aren't robots. Their reactions are entirely non-linear and unpredictable for that, for which I'm grateful. 

#### Flatten

This is one of my favorite approaches, because it removes overhead. It is also motivating.

#### Make an 'innovative' team inside a old beast

Blog post on agile development inside a waterfall framework
   • Messaging
   • Fitting stuff inside a timeline
Inevitable friction arises. 
It also causes resentment on both sides. A rockstar team will feel like they are 'propping up' all these crappy other groups. The other groups will feel marginalized. 

#### Use a 'framework' or 'layer' to encapsulate and extend.

Most of the time you're not reducing complexity. You're just hiding it.

### Price vs. value is non-linear. You also end up with various interfaces and APIs that you have to maintain



Ratio of code to features

- Blog post idea - price vs value
   § It's not linear
   § It's exponential

Time series illustrates this well


### Trust is non-linear

- Tension between prototyping (agile, incomplete) and the degradation of trust

Requirements & user expectations is where things break down. Can't be agile & get them in a waterfall fashion



### Prototypes and Engineering

* Humility
* Getting it right the first time
* Private failures and public successes
* Knowing the goal is important
- Tension between prototyping (agile, incomplete) and the degradation of trust
Blog post on adapting to new changes
   Safely
   Wisely

Trial periods are good for this

http://blog.hut8labs.com/speeding-up-your-eng-org-part-i.html

### Ideas vs Execution

"No business plan survives contact with reality"
"No architecture survives contact with hardware"
- Formality is overrated
   Adds overhead, process
   Get enough of the big picture, get the details, and GO
   Best way to go fast is to go slow, and pare down to the essentials
   Get better at working not by studying how to work, but by working and using reflective practice

http://ejohn.org/blog/write-code-every-day/

http://scottberkun.com/2014/critique-dont-fuck-up-culture/

http://users.ece.utexas.edu/~adnan/pike.html



# WHERE TO ADD?
http://highscalability.com/blog/2012/2/27/zen-and-the-art-of-scaling-a-koan-and-epigram-approach.html
- How to improve processes between business, developers, and DBAs

- Agile requires good working conditions. Why? Because the pace is so rapid that people are the domain knowledge. They're even more critical. That means turnover is more disruptive than in slower organizations.
   § Blog: people add process to compensate for individual failings. And to set expectations. Why not go for more competence instead? Isn't process defeatist?
