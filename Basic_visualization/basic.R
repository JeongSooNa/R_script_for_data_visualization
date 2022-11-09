###########
# R basic #
###########

## help
help(summary)
?summary
help("for")
## search in installed package
help.search("ANOVA")
??ANOVA
## search class in loaded package
apropos("ANOVA")
## help in web HTML
help.start()


## simple calculation
(20+3*2)/3 # Default : .7

## set Sequence
1:10
## Sequence
seq(1,5,0.5)
## Repeat
rep(10,5)
rep(1:5,2)
## Letter
LETTERS[1:10]
letters[-(3:5)]
##month
month.name
month.abb
abbreviate(month.name) # remove vowel

## value
x <- 3*4
x

## set vector
v <- c(2,4,6)
v
class(v)
str(v)
## naming
names(v) <- c("site1","site2","site3")
v
## index
## vector index is start at "1" not "0"
v[1] 
v["site1"]
## to string
v[2] <- "Na"
v # other integer value change to string too
v1 <- c(v[1],v[3])
v1

## factor
f <- factor(c("low","high"))
f
## factor sequence
f.1 <- gl(2,3, labels = c("male","female"))
f.1
## frequence table
table(f.1)
f.2 <- factor(c("white","black","white","white","black","white"))
t <- table(f.1,f.2)
t
## margin.table
margin.table(t,1) # 1:row
margin.table(t,2) # 2:column
## prop.table
prop.table(t,1)
prop.table(t,2)
prop.table(t)

## matrix
m <- matrix(c(1,2,3,4,5,6,7,8),2,4) # row:2 / col:4
m
m[2,2]
m[1,]
m[1,-3]

## array
a <-array(1:30,dim = c(2,5,3))
a

## list
l <- list(id = c(1,2,3), name = c("Kim","Lee","Park"), score = c(70,80,90))
l # like json type (key & value)
l[3]
l[[3]]
l$score
unlist(l) # named string vector class

## data frame
d <- data.frame(id = c(1,2,3), name = c("Kim","Lee","Park"), score = c(70,80,90))
d
d$name
d$score
d[2,3]
d[1,]
d[,2]
d[d$score >= 80,]
d[d$name == "Kim",]
d[d$name == "Kim",3]
d[d$name == "Kim","score"]
d[d$name=="Kim",c("id","score")]
names(d) # get key
names(d)[3]

## table
## random 100 sample in poison distribution (mean : 5)
table(rpois(100,5)) 
## random 100 sample in two binomial distribution (p : 0.5, 0.2)
table(rbinom(100,10,0.5),rbinom(100,10,.2))
## ftable : flat contingency table
ftable(Titanic, row.vars = 1:3)
ftable(Titanic, row.vars = 1:2, col.vars = "Survived")
ftable(Titanic, row.vars = 2:1, col.vars = "Survived")

x <- ftable(mtcars[c("cyl","vs","am","gear")])
x
ftable(x, row.vars = c(2,4))
ftable(mtcars$cyl, mtcars$vs, mtcars$am, mtcars$gear, row.vars = c(2,4),
       dnn = c("Cylinders", "V/S", "Transmission", "Gears"))

## Time Series
t <- ts(1:10, frequency = 4, start = c(2001,2))
t
str(t)
set.seed(100) # set random seed
z <- ts(matrix(rnorm(300),100,3),start = c(1961,1), frequency = 12)
z
class(z)
head(z)
plot(z)
plot(z,plot.type = "single", lty=1:3)


## control class
a <- matrix(c(1:10),2,5)
is.data.frame(a)
is.matrix(a)

## using source code
## Can using source code in web site
source("https://raw.githubusercontent.com/JeongSooNa/R_script_for_data_visualization/main/test_set/basic_plot.R")

## package & library
#install.packages("ggplot2")
#library("ggplot2")
#search() # check used R package

## error > change library path
## .libPaths("C:/Users/jsna/Desktop/R_script/R_script_for_data_visualization/library")
## .libPaths()
