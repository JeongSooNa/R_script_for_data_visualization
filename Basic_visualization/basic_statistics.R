#########################
# basic statistics in R #
#########################

## mathmatics function
a <- c(2,7,5,3,1,4,6)
## sort
sort(a)
## reverse sort
rev(a)
## rank(a)
rank(a)
## order index (each sorted values index)
order(a)
sort.list(a)
order(a, decreasing = TRUE) # reverse
## log
log(a)
log(a, base = 10)
## exp
exp(a)
## sqrt
sqrt(a)
## abs
abs(a)
## round
round(sqrt(a),2)
## cumsum
cumsum(a)
## cumprod
cumprod(a)
## cummin
cummin(a)
## cummax
cummax(a)
## match
match(c(2,4,6,8),a)
## union
union(a,c(1,2,10))
## intersect
intersect(a,c(1,2,10))
## set difference
setdiff(a,c(1,2,10))
## ckeck element
is.element(a,c(1,2,10))
## combination
choose(4,2)

## statistics function
a <- c(2,7,5,3,1,4,6)
## sumation
sum(a)
## product
prod(a)
## maximum
max(a)
## minimum
min(a)
## difference
diff(a)
## max index
which.max(a)
## min index
which.min(a)
## range
range(a)
## mean
mean(a)
## median
median(a)
## standard deviation
sd(a)
## variance
var(a)
## quantile
quantile(a)
## standardized
scale(a)
mean(scale(a))
var(scale(a))
sd(scale(a))

## sampling
x <- 1:10
sample(x,5)
sample(x)
sample(x, 5, replace = TRUE)
## bernoulli distribution
sample(c(0,1), 10, replace = TRUE, prob = c(0.5,0.5))
