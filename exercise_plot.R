# R
# JeongSoo Na
# Test plot

#1 내장된 데이터셋인 InsectSprays을 사용해 
#(a) spray종류에 따른 빈도표를 구하고 파이그림을 그리시오.
InsectSprays
x1=table(InsectSprays)
count=as.numeric(row.names(x1))
sum.count=x1*count
spraytype.sum=apply(sum.count,2,sum)
spraytype.sum
pie(spraytype.sum,col=c('red','yellow','green','blue','purple','white'))
#(b) count 평균을 구하시오.
mean(spraytype.sum)
#(c) spary 종류 별 count 의 합을 구하시오.
count=as.numeric(row.names(x1))
sum.count=x1*count
spraytype.sum=apply(sum.count,2,sum)
spraytype.sum

#2. 균일분포 (0,1)을 따르는 20개의 난수로 구성된 vector x에 대해
#(a) 평균과 표준편차를 구하시오.
n=20
x2=runif(n,0,1)
x2
mean(x2)
SE=sd(x2)/sqrt(n)
SE
#(b) 평균  2 표준오차로 나타낸 신뢰구간 그림을 그리시오.
#표준오차 = s/n^(1/2)
nclass.Sturges(x2)
hist(x2,breaks=6,prob=T,main="Uniform Distribution")
lines(density(x2,bw='SJ'),col='blue')
abline(v=mean(x2) + c(-1,1)*2*SE,col='red',lty=1)

#3. B 회사직원들의 월별 휴대폰 요금을 조사하여 얻은 데이터이다.
#(a) 평균 휴대폰요금을 추정하시오.
fee<-c("20,870","39,400","65,000","45,000","35,890",
       "29,000","56,770","23,000","38,550","59,800",
       "39,880","56,780","35,220","48,990")
fee<-as.numeric(gsub(",", "", fee)); fee
mean(fee)
#(b) 평균 휴대폰 요금의 95% 신뢰구간을 추정하시오.
SE=sd(fee) / sqrt (length(fee))
alpha=0.05
t.value = qt(1-alpha/2,df=length(fee)-1); t.value
mean(fee) + c(-1,1)*t.value*SE
#(c) 휴대폰 요금의 분산, 표준편차와 범위를 추정하시오.
s=sd(fee)
v=var(fee)
s
v
max(fee)-min(fee)
#(d) 상자그림을 그리시오
boxplot(fee,main="Monthly Mobile Phone fee in B Company",horizontal=T)
#(e) 확률밀도함수추정선과 히스토그램을 그리시오.
nclass.Sturges(fee)
hist(fee,breaks=5,prob=T,main="Mobile fee in B Company")
lines(density(fee,bw='SJ'),col='red')