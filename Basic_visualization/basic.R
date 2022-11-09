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
