###1번
#1
score <- matrix(c(10,40,60,20,
                  21,60,70,30),nrow=4, ncol=2)
score
#2
colnames(score)<- c('male','female')
score
#3
score[2,]
#4
score[,'female']
#5
score[3,2]

###2번
#1
st <- data.frame(state.x77)
#2
st
#3
colnames(st)
#4
rownames(st)
#5
dim(st)
#6
str(st)
#7
rowSums(st)
rowMeans(st)
#8
colSums(st)
colMeans(st)
#9
st['Florida',]
#10
st[,'Income']
#11
st['Texas','Area']
#12
st['Ohio',c('Population','Income')]
#13
st1 <- subset(st,Population>=5000)
st1
#14
st2 <- subset(st,Income>=4500)
st2[,c('Population','Income','Area')]
#15
nrow(st2)
#16
st3 <- subset(st, Area >= 100000 & Frost >= 120)
st3
#17
st4 <- subset(st, Population < 2000 & Murder <12)
st4
#18
st5 <- subset(st,Illiteracy>2.0)
st5
st5_1 <- colMeans(st5)
st5_Income <- st5_1[2]
#19
st6 <- subset(st,Illiteracy<2.0)
st6
st6_1 <- colMeans(st6)
st6_Income <- st6_1[2]
st6_Income - st5_Income
#20
st7 <- subset(st, Life.Exp == max(st$Life.Exp))
st7
#21
st8 <- subset(st,Income > st["Pennsylvania",'Income'])
st8

###3번
car <- data.frame(mtcars)
#1
class(car)
#2
nrow(car)
ncol(car)
#3
class(car)
#5
rownames(car[(car$mpg == max(car$mpg)),])
#6
car1 <- subset(car, gear==4)
car1
subset(car1, mpg == min(car1$mpg))

#7
car["Honda Civic",c('mpg','gear')]
#8
p_g <- car['Pontiac Firebird','mpg']
subset(car, p_g < car[,'mpg'])
#9
car2<-colMeans(car)
car2['mpg']
#10
length(unique(car[,'gear']))

###4번
air <- data.frame(airquality)
#1
class(air)
#2
head(air)
#3
subset(air, Temp == max(air[,'Temp']))[,c('Month','Day')]
#4
max(subset(air, Month==6)[,'Wind'])
#5
mean(subset(air,Month==7)[,'Temp'])
#6
mean(subset(air,Month==5&Ozone>0)[,'Ozone'])
#7
nrow(subset(air,Ozone>100))

###5번
swi <- data.frame(swiss)
#1
str(swi)
#2
rownames(swi[swi$Agriculture == max(swi$Agriculture), ])
#3
sort(swi$Agriculture,decreasing = TRUE) 
#4
subset(swi,Catholic>80)[,'Agriculture']
#5
subset(swi, Examination < 20.0 & Agriculture < 50.0)[,c('Examination','Agriculture')]

###6번
#1
x <- subset(data.frame(state.x77),Income>5000)[,c('Income','Population','Area')]
write.csv(x,'rich_state.csv',row.names=F)
#2
ds <- read.csv('rich_state.csv',header = T)
ds
