## Title

* Ethics for Engineers
* Ethics for Data Professionals
* Ethics for Professionals
* Professional Ethics: (SECTION)


### Sections

1. What is Ethical?
2. Why Ethics? (Is my job ethical?, Why Should I Care?)
3. Looking for Ethics in All The Right Places (What industries are ethical?)
4. Ethics for Data Professionals


## What is Ethical?

(VENN DIAGRAM OF ETHICS, MORALITY, CONSCIENCE, INTENTION, ACTION)

* Use emotional counterexamples to prove the point. Hypocritical actions.

Let's start with the Golden Rule: "Do unto others as you would have them do unto you" (LINK, Matt 7:12). It's a maxim we learn as children, and makes sense. Chances are you're not offending anybody if you treat them the way you want to be treated. It is also a core part of **all** the world's major religions (LINKS FOR Christianity, Juddaism, Hinduism, Buddhism, Islam, Atheism) *and* famous speeches texts (LINKS TO Declaration of Independence, I have a dream speech, etc).

The Golden Rule works **most** of the time. Its weakness is that people aren't all alike; what I want isn't always what you want. The [Platinum Rule](LINK) is better, "Do unto others, wherever reasonable, as they want to be done by" (LINK, REFINE). 

People aren't perfectly self-aware, so let's add a margin for error:

*"Do unto others, wherever reasonable, as they want to be done by, plus 15% for subjective error".*

This definition works both for individuals and groups. The implications, however, are immense:

1. Equality: you are an equal with everyone you interact with.
2. Reciprocity: you affect others and they affect you.
3. Humanity: we are each endowed with inalienable, equal self-worth. 


### Why Ethics

(IMAGE: Captain Obvious)

The world isn't perfect. 

Some of us start with huge advantages over others. 


##### Privilege

* Native English Speaker

http://www.buzzfeed.com/regajha/how-privileged-are-you

Think of the world as a huge system architecture. Where are the bottlenecks in the system?

It's about the goals.

* The world is not perfect. Humanity faces challenges
* Systems thinking
   * Income inequality
   * Climate change
   * Space travel - we only have one planet, http://www.extremetech.com/extreme/178389-spacex-prepares-to-take-the-biggest-step-towards-affordable-space-travel-soft-landing-the-falcon-9-rocket
   * Poverty
   * Violence
   * Financialization
   * Principal-agent problem
   * Spin > Reality
   * Overpopulation.

If everybody ignores these problems, then the problem just gets worse. Having met many of the people working at NGOs, I can tell you that they could use the help. They're dedicated, smart, and technically over their head. 


### Human Nature

We treat other people as they treat us. It's inescapable. This is *the* reason that companies who 'rightsize' their staff to give executives golden parachutes do poorly. People have a good intuitive sense of when they're being taken advantage of. 

We mirror the behavior of others. 


## What Do People Want?

People are complicated, unpredictable, muddled creatures. We often don't know what we want, and rarely have the self-awareness to articulate it. We also respond in a very subjective fashion, placing immediate concerns disproportionately higher than larger, longer-term concerns. (This is why credit cards exist).

There's a famous framework that describes what human beings need, a **Hierarchy of Needs**.

(INSERT IMAGE OF MASLOW'S PYRAMID)


* What do people want most? - Maslow's hierarchy of needs
What are fundamental human rights?
   * Air
   * Water
   * Shelter?
   * Clothing?
   * Food?
   * Medicine?
   * Internet?
   * Vacations?
   * Netflix?


Now, let's create the opposite, Dev's ??? of ????:

1. Polluted air, polluted water, unsafe/unstable housing, inadequate clothing.
2. Not enough food, non-nutritious food, untested food. Lack of access to medicine and medical care.
3. ...CONTINUE
(INCLUDE IMAGES).

How important are each of these? They're not equal; that's a pyramid for a reason. I'd argue that it's not a power-law distribution; lack of housing isn't 10X worse than lack of food. Let's use a log-5 scale (CHECK): each tier is five times as important as the tier above it. 

"First: There are no sacred truths; all assumptions must be critically examined; arguments from authority are worthless"
"Second: whatever is inconsistent with facts must be discarded or revised..."


### For Better or Worse is Usually Worse

Humans are risk-averse. It's a fact of life. We also focus on the negative more than the positive.

(INCLUDE RISK AVERSION RATIO, NEGATIVITY RATIO).

This is important because we should account for it. If I'm a doctor that treats a patient's broken leg and bills them into bankruptcy, what do you think that person will remember most? Their healed leg, or the life in poverty?


### Aggregate Impact

Our impact to our society is the sum of the impact we have to each of the people in it. 

There's a radical notion in here: all people have equal worth. It's also the foundation of our society, that of equal protection and equal representation. I'm a *big* fan, so let's keep that.

For example, the impact that teachers have on society is the sum of the impact they have on each of their students and parents, and the impact they have on the taxpayers that pay them.

There are both positive and negative impacts, and both must be considered. 

I work as a data scientist for a public university, the University of Washington. My impact on society is the sum of the impact I have on students, professors and researchers, and the sum of the cost I impose on students' tuition and the state's funding. 

There's an explicit ROI here. What is our impact (return) vs. our cost (investment). I can improve my ROI by doing 3 things:

1. Increase the impact I have on individuals (provide better service)
2. Impact more individuals (serve more people)
3. Reduce my cost (take a pay cut)

### Partial Contribution

We are rarely in total control of everything. Software engineering and IT ops are team skills. There are also tons of other groups (PMs, management, customer service, etc) involved, and they all contribute in their own way.

So what's our impact? I like to assume everyone contributes equally, at least to start with. It's not true, but it's a simplying assumption that makes a lot of the math simpler. (If anyone knows a way of scientifically measuring individual contribution, *please* let me know).

http://www.reddit.com/r/AskReddit/comments/23lgxz/what_about_your_job_would_shock_the_everyday/

Total Team Contribution = SUM(Each Person's Contribution)


#### Measuring Contribution

* PageRank. 
* Two factors - people's immediacy to the customer, and their power to influence customers on their own, for better or worse.
   * Front-line folks
   * Managers get very little. Their power is limited to communication, budgets, hiring/firing. It's all indirect.
   * Include contributions by janitors, electricians, power company.


#### Examples

Let's say a group of 10 people works for 4 months and helps 5,000 students graduate 1 quarter faster. The cost of a quarter's tuition is around $5K at the UW, so our impact was around $25,000,000. That means each person's contribution came out to be around $625K *per month*. Those are some pretty impressive potential savings.

Let's take another example. A group of 30 people spends a year and helps 20,000 bank customers save an average of $30 in fraudulent transactions each year. That comes out to a total impact of $600,000, or a per-person ROI of $1666 per month. That wouldn't even cover their salary.

What happens when our impact isn't monetary? Then things get a lot trickier. We need a common metric to use to evaluate or our ROI won't make any sense.


**The Devil is in the Details**

For this kind of measurement to work, you need some things:

1. A way of measuring the impact of your work. Testing your work on a subset of the population (A/B testing, a.k.a the scientific method) is the gold standard for how to do this.
2. An accurate method to determine each person's contribution. This is bitterly complicated, and everyone will try to find a way to game these numbers.









## Misc
* Very few things are 100% ethical, or 100% evil. Usually it's a very hazy middle ground we live in. The real challenge is to identify if your workyou're 70% good between when you're 30% good.
   * Do things as efficiently as possible. Since we are in the middle, we want our role to be cheap, reliable and largely invisible. Think of traffic lights.


### Is My Work Ethical?

* Margin of error
* Partial responsibility
* Partial authority
* Sum of actions and their good and bad effects
* Ask questions
* Look at the ultimate users and providers.
* We're usually middlemen.
* If you just build tools, look at what industries they're used in. Then use Bayesian math to figure out if your effect is unethical. For example, if you build a better big data engine, what % of big data engines are used for the NSA or online ad serving?
* You don't know your own impact until much later.


#### The Ethics Equation:
Sum Of
Number of people we affect
Good impact, biased.
Bad impact, biased.
Margin of error
Percentage responsible. Less for line workers. More for executives.
Impact on future generations. Margin of error.

Potential for work to be used for evil
Potential for work to be used for good.
Unintended consequences.


We live in a society where partial responsibility means no responsibility. However, unethical behavior would be a lot harder without computer programs. As people who enable behavior, we should strive to *not* enable unethical behavior. If it's downright immoral, find a way to say no. Find a way to add auditing behavior. Become a whistleblower. Quit your job.


   ○ Ethics of being a software engineer
      ○ Ends = sum(means)
      ○ Use physics analogies (work = force X time)
      ○ Efficiency
      ○ Where is the need
      ○ Human impact