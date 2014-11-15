# R learning script for Monte Carlo methods
library(ggplot2)
library(VGAM)
theme_set(theme_bw())


# blog post work
set.seed(12345)
req <- seq(1, 2250)

qplot(x=req, y= (1 - ppareto(length(req), req, 0.138 ))*100, ylim=c(0,100), xlab="Number of Requests", ylab="% Complete")


array(1 - ppareto(100, seq(1,100), 0.138 ))[20]
plot(1 - ppareto(100, seq(1,100), 0.138 ))
qplot(x=seq(1,100), y= 1 - ppareto(100, seq(1,100), 0.138 ), ylim=c(0,100))

requests.df <- as.data.frame(cbind(req, 1 - ppareto(length(req), req, 0.138 )))
names(requests.df) <- c("request_id","percent_complete")

requests.df$

head(requests.df)

