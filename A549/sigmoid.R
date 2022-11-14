# sigmoid function & visualization

### install package
#install.packages("sigmoid")
#install.packages("ggplot2")
install.packages("ggpmisc")
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
summary(lm_dat)$r.squared

## plot
# A548 plot
ggplot(data=dat, aes(x=μM, y=DMSO)) + 
  geom_point(aes(size=μM, color=DMSO)) +
  labs(title = "D137", x = "μM", y = "% for DMSO") +
  stat_smooth(method = "lm") +
  annotate("text", x=-4, y=-2, label = "R-Square : "+summary(lm_dat)$r.squared, size = 4)
# log A548 plot
ggplot(data=log_dat, aes(x=log_μM, y=log_DMSO)) + 
  geom_point(aes(size=log_μM, color=log_DMSO)) +
  labs(title = "D137", x = "log(μM)", y = "log(% for DMSO)") +
  stat_smooth()

summary(lm_dat)
plot(dat)
par(mfrow=c(2,2))
plot(lm_dat)
par(mfrow=c(1,1))


### test
df <- data.frame(x = c(1:100))
df$y <- 2 + 3 * df$x + rnorm(100, sd = 40)
p <- ggplot(data = df, aes(x = x, y = y)) +
  geom_smooth(method = "lm", se=FALSE, color="black", formula = y ~ x) +
  geom_point()
p
lm_eqn <- function(df){
  m <- lm(y ~ x, df);
  eq <- substitute(italic(y) == a + b %.% italic(x)*","~~italic(r)^2~"="~r2, 
                   list(a = format(unname(coef(m)[1]), digits = 2),
                        b = format(unname(coef(m)[2]), digits = 2),
                        r2 = format(summary(m)$r.squared, digits = 3)))
  as.character(as.expression(eq));
}

p1 <- p + geom_text(x = 25, y = 300, label = lm_eqn(df), parse = TRUE)
p1
ggplot(data = dat, aes(x = μM, y = DMSO)) +
  stat_poly_line() +
  stat_poly_eq(aes(label = after_stat(eq.label))) +
  stat_poly_eq(label.y = 0.9) +
  geom_point()

ggplot(data = df, aes(x = x, y = yy)) +
  stat_poly_line(formula = y ~ poly(x, 2, raw = TRUE)) +
  stat_poly_eq(formula = y ~ poly(x, 2, raw = TRUE),
               aes(label = after_stat(eq.label))) +
  geom_point()
