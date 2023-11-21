#1
plot(cars$speed, cars$dist,  
     main = "속도-제동거리에 대한 산점도",
     xlab = "speed",
     ylab = "dist",
     col = "black",
     pch = 19)
#속도가 높을수록 제동거리가 길어짐을 알 수있다 두 변수 간의 상관관계는 비례한다고 할 수 있다 
#2
plot(pressure$temperature, pressure$pressure,
     main = "온도-기압에 대한 산점도",
     xlab = '온도',
     ylab = '기압',
     col = 'black',
     pch = 19)
#150도애서 기압이 급격하게 높아지는 걸 확인 할 수있다 이로써 비례한다고 할 수있다
#3
state.x77
piia <- c("Population", "Income", "Illiteracy", "Area")
s77 <- state.x77[,piia]
pairs(s77, pch = 19)
cor(state.x77)[1:4,1:4]
#상관계수가 0.5가 넘는 두 변수가 없으므로 이 변수들간의 상관관계는 없다

#4
color <- c("red", "green", "blue") #점의 컬러
point <- as.numeric(iris$Species)
pairs(Sepal.Length~Sepal.Width, 
      data = iris,
      pch = c(point),
      col = color[point])
plot(iris$Sepal.Length, iris$Sepal.Width,
     main = "Iris plot",
     pch = c(point),
     col = color[point])
cor(iris$Sepal.Length, iris$Sepal.Width)
#두 변수 간의 상관계수가 -0.1175698이므로 상관관계가 없다고 할 수있다.
#5
Income <- c(121,99,41,35,40,29,35,24,50,60)
Center <- c(19,20,16,16,18,12,14,12,16,17)
In_Cen <- data.frame(Income,Center)
In_Cen
plot(Income, Center,
     pch = 19,
     col = 'Red')
cor(Income,Center)
#상관계수가 1에 가까운 0.7929108이므로 상관관계가 높다고 할 수있다

#6
Score <- c(77.5,60,50,95,55,85,72.5,80,92.5,87.5)
Time <- c(14,10,20,7,25,9,15,13,4,21)
plot(Score, Time,
     pch = 19)
cor(Score, Time)
#상관관계가 반비례하므로 티비시청시간이 적을 수록 성적이 높다는 것을 알 수있다
#7
mtcars
cor(mtcars)["mpg",-1]
pairs(mtcars[,-10])
#mpg와 vs의 상관계수가 0.6640389로 젤 높기 때문에 두 변수의 상관성이 높다

#8
years <- 2015:2026
popul <- c(51014,51245,51446,51635,51811,51973,52123,52261,52388,52504,52609,52704)
plot(years,
     popul,
     main = '2015~2026 예상 인구수',
     type ='b',
     lty = 1,
     col = 'red',
     xlab = '년도',
     ylab = '총 인구'
)

#9
years <- c(20144,20151,20152,20153,20154,
              20161,20162,20163,20164,20171,20172,20173)
men <- c(73.9, 73.1, 74.4, 74.2, 73.5, 73, 74.2, 74.5, 73.8, 73.1, 74.5, 74.2)
women <- c(51.4, 50.5, 52.4, 52.4, 51.9, 50.9, 52.6, 52.7, 52.2, 51.5, 53.2, 53.1)
plot(years,
     men,
     main = '남녀 경제활동참가율',
     type ='b',
     lty = 1,
     col = 'red',
     xlab = '분기',
     ylab = '참가율',
     ylim = c(50,75)
)

lines(years,
      women,
      type = "b",
      col = "blue",
)

#10
#10-1
cor(trees$Girth,trees$Height)
plot(trees$Girth,trees$Height,
     xlab = '지름',
     ylab = '높이',
     pch = 19)
#10-2
pairs(trees[,-4], pch = 19)
cor(trees)[1:3,1:3]

#11
data("Orange")
mynum <- Orange[,c("age","circumference","Tree")]
Orange$Tree

col <- c()
for (i in 1:nrow(mynum)) {
  if (mynum$Tree[i] == 1){
    col[i] <- "red"
  } else if (mynum$Tree[i] == 2){
    col[i] <- "green"
  } else if (mynum$Tree[i] == 3){
    col[i] <- "blue"
  } else if (mynum$Tree[i] == 4){
    col[i] <- "white"
  } else if (mynum$Tree[i] == 5){
    col[i] <- "black"
  }
}
col <- factor(col, level = c("red","green","blue","white","black"))
col
new_Orange <- data.frame(mynum, col)
new_Orange
plot(Orange$age,Orange$circumference,
     xlab = '지름',
     ylab = '높이',
     col = new_Orange$col,
     pch = 19)

#12
install.packages("mlbench")
library(mlbench)
data("Glass")
myds <- Glass
myds[,1:8]
del_type <- myds[,1:8]
pairs(del_type[,1:8], pch = 19)
cor(del_type[,1:8])
myds$Type

col1 <- c()
for (i in 1:nrow(myds)) {
  if (myds$Type[i] == 1){
    col1[i] <- "red"
  } else if (myds$Type[i] == 2){
    col1[i] <- "green"
  } else if (myds$Type[i] == 3){
    col1[i] <- "blue"
  } else if (myds$Type[i] == 5){
    col1[i] <- "white"
  } else if (myds$Type[i] == 6){
    col1[i] <- "black"
  } else if (myds$Type[i] == 7){
    col1[i] <- "yellow"
  }
}
col1 <- factor(col1, level = c("red","green","blue","white","black","yellow"))
col1
myds1 <- data.frame(myds, col1)
myds1
pairs(myds1[,1:9], 
      pch = 19,
      col = myds1$col1)

#13
data("Ionosphere")
myds <- Ionosphere[,3:12]
myds
cor(myds) < 1 & cor(myds) > 0.6
cor(myds$V9, myds$V11)
plot(myds$V9, myds$V11)

#14
LakeHuron
years <- 1875:1972
hlevel <- as.vector(LakeHuron)
hlevel
plot(years, hlevel,
     main = 'LakeHuron',
     type = "l",
     lty = 1,
     xlab = '년도',
     ylab = '수위')

#15
AirPassengers
month <- 1:12
air_1949 <- window(AirPassengers, 1949, c(1949, 12))
air_1955 <- window(AirPassengers, 1955, c(1955, 12))
air_1960 <- window(AirPassengers, 1960, c(1960, 12))

plot(month, air_1949,
     col = 'red',
     main = 'Airpassengers',
     type = "o",
     xlab = '월',
     ylab = '승객수',
     ylim = c(100,650))
lines(month, air_1955, type = "o", col = "blue")
lines(month, air_1960, type = "o", col = "orange")

#16
USAccDeaths
month <- 1:12
USA_1973 <- window(USAccDeaths, 1973, c(1973, 12))
USA_1975 <- window(USAccDeaths, 1975, c(1975, 12))
USA_1977 <- window(USAccDeaths, 1977, c(1977, 12))
plot(month, USA_1973,
     col = 'red',
     main = '년도별',
     type = "o",
     xlab = '월',
     ylab = '사망자 수',
     ylim = c(min(USA_1973, USA_1975, USA_1977), max(USA_1973, USA_1975, USA_1977)))
lines(month, USA_1975, type = "o", col = "blue")
lines(month, USA_1977, type = "o", col = "orange")
