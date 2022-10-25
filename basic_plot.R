
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
plot(x,sigmoid(x),
     main = "sigmol plot",
     col = 'red',
     type = 'l')
lines(c(-5,5),c(0,1), lty = 3)
lines(c(-5,0,5),c(0,0.5,1), type = "h")
plot(log(x),log(sigmoid(x)),
     main = "log sigmol plot",
     col = 'blue',
     type = 'l',
     ylim = c(-0.8,0))
par(mfrow=c(1,1))

