2+3
(3+6)*8
2^3
7+4
#2^3
log(10)+5
sqrt(25)
max(5,3,2)
a<-10
b<-20
c<-a+b
print(c)
a<-125
a
print(a)
a<-10
b<-20
a+b
a<-'A'
a+b
x<-c(1,2,3)
y<-c("a","b","c")
z<-c(TRUE,TRUE,FALSE,TRUE)
x
y
z
w<- c(1,2,3,"a","b","c")
w
v1 <- 50:90
v1
v2 <- c(1,2,5,50:90)
v2
v3 <- seq(1,103,3)
v3
v4 <- seq(0.1,1.0,0.1)
v3
v4
v5 <- rep(1,times=5)
v5
v6 <- rep(1:5,times=3)
v6
v7 <- rep(c(1,5,9), times=3)
v7
score <- c(90,85,70)
score
names(score)
names(score) <- c("John","Tom","Jane")
names(score)
score

d <- c(1,4,3,7,8)
d[1]
d[2]
d[3]
d[4]
d[5]
d[6]

GNP <- c(2090,2450,960)
GNP
names(GNP) <- c("Korea","Japan","Nepal")
GNP
GNP[1]
GNP["Korea"]
GNP[c("Korea","Nepal")]

v1 <- c(1,5,7,8,9)
v1
v1[2] <- 3
v1
v1[c(1,5)] <- c(10,20)
v1

d <- c(1,4,4,7,8)
2*d
d-5
3*d+4

x <- c(1,2,3)
y <- c(4,5,6)
x+y
x*y
z <- x+y
z

d <- c(1,2,3,4,5,6,7,8,9,10)
sum(d)
sum(2*d)
length(d)
mean(d[1:5])
max(d)
min(d)
sort(d)
sort(d, decreasing = FALSE)
sort(d, decreasing = TRUE)

v1 <- median(d)
v1
v2 <- sum(d)/length(d)
v2

d <- c(1,2,3,4,5,6,7,8,9)
d>=5
d[d>5]
sum(d>5)
sum(d[d>5])
d==5
condi <- d> 5& d < 8
d[condi]

ds <- c(90,85,70,84)
my.info <- list(name='Tom',age=60, status=TRUE, score=ds)
my.info
my.info[[1]]
my.info$name
my.info[[4]]

bt <- c('A', 'B', 'B', 'O', 'AB', 'A')
bt.new <- factor(bt)
bt
bt.new
bt[5]
bt.new[5]
levels(bt.new)
as.integer(bt.new)
bt.new[7] <- 'B'
bt.new[8] <- 'C'
bt.new

25+99
456-123
2*(3+4)
(3+5*6)/7
(7-4)*3
210+35
1256%%7
184%%5
1976/24
16*25+186*5-67*22
a <- 4
b <- 5
c <- a+b
c
pi <- 3.14
10*10*pi
12*12*pi
15*15*pi
x <- 6
y <- 2*x^+5*x+10
y
x<-8
y <- 2*x^+5*x+10
y
x <- 10
y <- 2*x^+5*x+10
y
val.a <- 10
sum.ab <- val.a + val.b #val.b에 부여된 변수가 없으므로 sum.ab의 값은 도출되지 못한다
vc.1 <- c(95,86,47,55,68)
vc.1
vc.2 <- seq(100,200,2)
vc.2
vc.3 <- rep('TRUE',times=20)
vc.3
d <- c(100:200)
d
d[10]
sort(d, decreasing = TRUE)
sort(d[-c(1:10)], decreasing = TRUE)
d[1:91]
d[d%%2==1]
d[d%%3==0]
d.20 <- d[-c(1:20)]
d.20
d.20[-5]
d.20[-c(5,7,9)]
absent <- c(10,8,14,15,9,10,15,12,9,7,8,7)
names(absent) <- c('JAN','FEB','MAR','APR','MAY','JUN','JUL','AUG','SEP','OCT','NOV','DEC')
absent
absent[5]
absent[c('JUL','SEP')]
sum(d[1:6])
mean(d[7:12])
d1 <- 1:50
d2 <- 51:100
d1
d2
length(d2)
d1+d2
d2-d1
d1*d2
d2/d1
sum(d1)
sum(d2)
sum(d1,d2)
max(d2)
min(d2)
c1 <- mean(d1)
c2 <- mean(d2)
c2-c1
sort(d, decreasing = TRUE)
d11 <- d1[1:10]
d21 <- d2[1:10]
d3 <- c(d11,d21)
d3
v1<- 51:90
v1[v1<60]
sum(v1<70)
sum(v1[v1>65])
bt <- 65<v1 & v1<73
v1[bt]
bt1 <- 65>v1 & v1>80
v1[bt1]
v1[v1 %% 7 == 3]
v1*7==0
sum(v1[v1%%2==0])
condi <- v1%%2==1 | v1>80
v1[condi]
condi1 <- v1%%3==0 | v1%%5==0
v1[condi1]
a1<-v1[v1%%2==0]*2
a1
(v1%%7==0)

sqrt(456)
218*456
218%%456
218^456
max(c(1,256,218,456))
Hannam <- c(1,3,5,7,9,11,13,15,17,19,21)
Hannam[c(3,6)]<- c(6,12)
Hannam[c(3,6)]
Hannam <- Hannam+5
sum(Hannam)
range(Hannam)
Bigdata <- c(90,65,75,70,85,95,80,78,83,68,86) 
mean(Bigdata[Bigdata<80])
Ma <- matrix(seq(1,49,2),nrow=5,ncol = 5,byrow = T)
Ma
as.data.frame()