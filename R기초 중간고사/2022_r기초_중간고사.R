sqrt(4)
v2 <- c(30:50)
v2
v3<- seq(1,199,3)
v3
v4 <- rep(c(1,3,5,7,9),times=5)
v4
V1 <- c(2,4,6,8,10)
v1(4)
d <-c(1:60)
d
sum(d)
mean(d)
median(d)
range(d)
d[d[d%%7==0]*0]
sum(d[d>45&d<55])
d1 <- (d%%7!=0)
d1<-(d%%7==0)*0
d[d1]
d[d1]
score <- matrix(c(91,85,77,56,85,65,44,85,77,88,52,76,85,77,66,65),nrow=4,ncol=4,byrow = F)
colnames(score)<-c('Minju','Jiho','Jisu','Youngho')
rownames(score)<-c("Kor", "Eng", "Math", "Sci")
score[3,]
score[,'Minju']
score[4,3]

st <- data.frame(state.x77)
print(st)
str(st)
colMeans(st)
st['California',]
st[st$Income >5000&st$Population>20000,]
subset(st,Population>10000&max(st[,'Murder']))


score <- 65
if (score > 90) {
  grade <- 'A'
} else if (score > 80) {
  grade <- 'B'
} else if (score > 70) {
  grade <- 'C'
} else if (score > 60) {
  grade <- 'D'
} else {
  gread <- 'F'
}
print(grade)

a<-70
b<-75
if(a>60&b>60){
  result<-'합격입니다'
}else{
  result<-'불합격입니다'
}
print(result)

