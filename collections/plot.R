### basic plot and most used plot
### JSNa
### 2022.10.21

### set random seed
set.seed(100)
### rnorm : 정규 분포 함수
p1 <- rnorm(1000,m=25,sd=2)
p1
hist(p1)
### pnorm : 누적 분포 함수
p2 <- pnorm(p1)
p2
### qnorm : 분위수
