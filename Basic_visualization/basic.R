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
