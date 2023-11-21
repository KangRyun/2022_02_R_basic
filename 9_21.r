rep(c(1,5,9),each=3)
GNP <- c(2090,2450,960)
GNP
names(GNP) <- c("Korea","Japan","Nepal")
GNP
GNP[1]
GNP["Korea"]
GNP[c("Korea","Nepal")]

v1 <- c(1,5,7,8,9)
v1
v1[2]<-3
v1
v1[c(1,5)] <- c(10,20)
v1

d<-c(1,4,3,7,8)
2*d
d-5
3*d+4

x <- c(1,2,3,4,5)
y <- c(4,5,6)
x+y
x*y
z<- x+y
z

d<-c(1,2,3,4,5,6,7,8,910)
sum(d)
sum(2*d)
length(d)
mean(d[1:5])
max(d)
min(d)
sort(d)
