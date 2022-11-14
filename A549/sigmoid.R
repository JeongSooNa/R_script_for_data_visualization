# sigmoid function & visualization

### install package
#install.packages("sigmoid")
#install.packages("ggplot2")
#install.packages("ggpmisc")
#install.packages("dplyr")
library("dplyr")
library("sigmoid")
library("ggplot2")
library("ggpmisc")

## basic example
sigmoid(3)
sigmoid(-5:5)
sigmoid(matrix(-3:5,nrow = 3))
relu(-5:5)
## mapping
input = -5:5
df = data.frame(input, logistic(input), Gompertz(input))
ggplot(df, aes(input, logistic(input))) + geom_line() +
  geom_line(aes(input, Gompertz(input)), colour = 'red')
x = seq(1,5, by=0.05)
qplot(sigmoid(x))

## A548
μM <- c(0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30)
log_μM <- log(c(0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30))
DMSO <- c(97.01, 98.43, 98.29, 97.66, 96.51, 88.39, 38.54, 2.63) # D137
log_DMSO <- log(c(97.01, 98.43, 98.29, 97.66, 96.51, 88.39, 38.54, 2.63))
#DMSO <- c(98.29, 98.35, 99.79, 99.78, 100.43, 100.19, 99.51, 99.16) # STB-D8
dat <- data.frame(μM, DMSO)
log_dat <- data.frame(log_μM, log_DMSO)

## R-Square
lm_dat = lm(DMSO~μM, data=dat)
llm_dat = lm(log_DMSO~log_μM, data=log_dat)
summary(lm_dat)
summary(lm_dat)$r.squared
summary(llm_dat)
summary(llm_dat)$r.squared

## plot
# A548 plot
ggplot(data=dat, aes(x=μM, y=DMSO)) + 
  geom_point(aes(size=μM, color=DMSO)) +
  labs(title = "D137", x = "μM", y = "% for DMSO") +
  stat_smooth(method = "lm") +
  annotate("text", x=10, y=-2, label = paste("R-Square : ", as.character(round(summary(lm_dat)$r.squared,2))), size = 4)
# log A548 plot
ggplot(data=log_dat, aes(x=log_μM, y=log_DMSO)) + 
  geom_point(aes(size=log_μM, color=log_DMSO)) +
  labs(title = "D137", x = "log(μM)", y = "log(% for DMSO)")
  #+stat_smooth(method = "lm")


summary(lm_dat)
plot(dat)
plot(log_dat)
lines(log_dat$log_μM,log_dat$log_DMSO, lty="dotted", col="red")
par(mfrow=c(2,2))
plot(lm_dat)
par(mfrow=c(1,1))


### r square test
ggplot(data = log_dat, aes(x = log_μM, y = 1/exp(-log_DMSO))) +
  stat_poly_line(formula = y ~ poly(x, 2, raw = TRUE)) +
  stat_poly_eq(formula = y ~ poly(x, 2, raw = TRUE),
               aes(label = after_stat(eq.label))) +
  geom_point()





### test
df <- structure(list(drug = c("drug_1", "drug_1", "drug_1", "drug_1", 
                              "drug_1", "drug_1", "drug_1", "drug_1", "drug_2", "drug_2", "drug_2", 
                              "drug_2", "drug_2", "drug_2", "drug_2", "drug_2"), 
                     conc = c(100, 33.33, 11.11, 3.7, 1.23, 0.41, 0.14, 0.05, 100, 33.33, 11.11, 3.7, 1.23, 0.41, 0.14, 0.05), 
                     mean_response = c(1156, 1833, 1744, 1256, 1244, 1088, 678, 489, 2322, 1867, 1333, 944, 567, 356, 200, 177), 
                     std_dev = c(117, 317, 440, 200, 134, 38, 183, 153, 719, 218, 185, 117, 166, 167, 88, 50)), 
                class = "data.frame", row.names = c(NA, -16L))

#Drug 1
fm1 <- nls(log(mean_response) ~ log(a/(1+exp(-b*(conc-c)))), df[df$drug=='drug_1',], start = c(a = 1, b = 1, c = 1))
#Drug 2
fm2 <- nls(log(mean_response) ~ log(a/(1+exp(-b*(conc-c)))), df[df$drug=='drug_2',], start = c(a = 1, b = 1, c = 1))
#Plot
ggplot(data=df, aes(y=mean_response, x= conc, color = drug)) +
  geom_pointrange(aes(ymax = (mean_response + std_dev), ymin = (mean_response - std_dev))) +
  geom_smooth(data = df[df$drug=='drug_1',],method = "nls", se = FALSE,
              formula = y ~ a/(1+exp(-b*(x-c))),
              method.args = list(start = coef(fm1),
                                 algorithm='port'),
              color = "tomato")+
  geom_smooth(data = df[df$drug=='drug_2',],method = "nls", se = FALSE,
              formula = y ~ a/(1+exp(-b*(x-c))),
              method.args = list(start = coef(fm2),
                                 algorithm='port'),
              color = "cyan3")
logist <- function(x){
  y = exp(x) / (1 + exp(x))
}

p1 <- ggplot(data_frame())

p1 + stat_function(aes(-5:5), fun = logist) + xlab("x")

# dat : μM , DMSO
fm <- nls(log(μM) ~ log(a/(1+exp(-b*(μM-c)))), start = c(a = 1, b = 1, c = 1))
ggplot(data=dat, aes(y=DMSO, x= μM)) +
  geom_smooth(data = dat,method = "nls", se = FALSE,
              formula = y ~ a/(1+exp(-b*(x-c))),
              method.args = list(start = fm,
                                 algorithm='port'),
              color = "cyan3")


### function
x <- seq(-5,5,.05)
plot(x,plogis(x),type='l')
plot(log_dat, type='l')

f <- function(x){
  95.53*exp(-0.059*x)
}
y <- f(dat$μM)
plot(log_dat$log_μM,log_dat$log_DMSO, type = 'l')
plot(log_dat$log_μM,y)

ggplot(data = log_dat, aes(x = log_μM, y = exp(log_DMSO))) +
  stat_poly_line(formula = y ~ poly(x, 2, raw = TRUE)) +
  stat_poly_eq(formula = y ~ poly(x, 2, raw = TRUE),
               aes(label = after_stat(eq.label))) +
  geom_point()


ggplot(data.frame(x=c(0,10)), aes(x=x)) +
  +   stat_function(fun=dexp(x), args=list(rate=1), colour="brown", size=1.5)


### ..!
μM <- c(0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30)
log_μM <- log(c(0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30))
DMSO <- c(97.01, 98.43, 98.29, 97.66, 96.51, 88.39, 38.54, 2.63) # D137
log_DMSO <- log(c(97.01, 98.43, 98.29, 97.66, 96.51, 88.39, 38.54, 2.63))
#DMSO <- c(98.29, 98.35, 99.79, 99.78, 100.43, 100.19, 99.51, 99.16) # STB-D8
dat <- data.frame(μM, DMSO)
log_dat <- data.frame(log_μM, log_DMSO)
dat
μM0 <- 0.01
DMSO0 <- 100

### sigmoid
plot(log_μM,DMSO)
model <- nls(DMSO~a/(1 + exp(-b * log_μM)), start=list(a=100,b=0.01))
plot(model)

##############
dat_str <- structure(list(conc = c(0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30), 
                          DMSO = c(97.01, 98.43, 98.29, 97.66, 96.51, 88.39, 38.54, 2.63)), 
                     class = "data.frame")

