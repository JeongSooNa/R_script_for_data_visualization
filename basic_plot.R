
### 
x <- system.file("README")
print(x)
set.seed(100)
BMI <- rnorm(1000,m=25,sd=2)
print(BMI)
hist(BMI,freq=F)
histinfo <- hist(BMI)
histinfo