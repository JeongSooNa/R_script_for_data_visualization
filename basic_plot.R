
### 
x <- system.file("README")
print(x)
set.seed(100)
BMI <- rnorm(1000,m=25,sd=2)
print(BMI)
hist(BMI,freq=F)
histinfo <- hist(BMI)
histinfo

### sigmoid function
sigmoid = function(x){
  1 / (1 + exp(-x))
}

x <- seq(-5,5,0.01)
x
par(mfrow=c(1,2))
plot(x,sigmoid(x),col='red')
plot(log(x),log(sigmoid(x)),col='blue')
par(mfrow=c(1,1))

