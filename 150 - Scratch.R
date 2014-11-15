# R learning script for Monte Carlo methods
library(ggplot2)
library(VGAM)

# http://www.youtube.com/watch?v=cpc9D0EVYSk
# It's really about simulation. Monte Carlo looks at probablility patterns.
# Sample and replicate are really useful.
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 

# Simulate a game of chance with coin tossing
options(width=60)
sample(c(-1,1), size=50, replace=TRUE) #sample from a given set. 
#Replace the values after you sample them

# cumsum will do a rolling cumulative sum. That's handy.

win <- sample(c(-1,1), size=50, replace=TRUE)
cum.win <- cumsum(win)
cum.win


#extend, plot the sequence of cumulative winnings for 4 games
par(mfrow=c(2,2)) #carves up the graphic frames into 4 pieces
for (j in 1:4) {
  win <- sample(c(-1,1), size=50, replace=TRUE)
  plot(cumsum(win), type="l", ylim=c(-15,15))
  abline(h=0)
}

#there's a lot of variability here. Interesting
# what do we see? There's a level at which you should declare victory and stop
# pick a random set.seed, set it to a large number

# 1) what's the probability of breaking even after 50 games?
# 2) what likely number of tosses that Peter will be winning?
# 3) what's the value of Peter's best fortune?

# simulate the random process once, and then repeat. 
# compute statistics as you repeat.
# 

# user-defined function
peter.paul <- function(n=50) {
  win <- sample(c(-1,1), size=n, replace=TRUE)
  sum(win) #fortune at the end of the game
}

peter.paul()

F <- replicate(10000, peter.paul()) #calls a function a bunch of times
#has a 1000 values
max(F) #highest value

table(F) #frequency binning
par(mfrow=c(1,1))
plot(table(F)) #looks normally distributed
# no odd numbers. Why is that? Doesn't go into it.
# Only way to break even is if the head comes up n/2 times

## what are the chances he breaks even? It's the ratio of him finishing with 0 out of 1000
# In the simulation it was 1119/10000, or .1119
dbinom(25,size=50,prob=0.5) #comes out to be .112. That's really close

#now on part 3






# blog post work
set.seed(12345)
req <- seq(1, 2250)

plot(ppareto(seq(1,100),1,0.548))

array(1 - ppareto(100, seq(1,100), 0.138 ))[20]
plot(1 - ppareto(100, seq(1,100), 0.138 ))
qplot(x=seq(1,100), y= 1 - ppareto(100, seq(1,100), 0.138 ), ylim=c(0,1))
qplot(x=seq(1,2250), y= 1 - ppareto(2250, seq(1,2250), 0.138 ), ylim=c(0,1))

cdf_pareto <- function(length, location)
{
  sum(dpareto(seq(1,length),location, shape=1))
}

req.df <- as.data.frame(req)
names(req) <- c('request')
req.df$pareto <- NULL
req.df$pareto <- cdf_pareto(2250, 
                            
                            qplot(data=req.df, x=req, y=pareto)
                            
                            
                            alpha <- 3; 
                            k <- exp(1); 
                            x <- seq(2.8, 8, len = 300)
                            plot(x, dpareto(x, location = alpha, shape = k))
                            qpareto(seq(0.1,0.9,by = 0.1),location = alpha,shape = k)
                            