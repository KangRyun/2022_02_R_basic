#두 변수 사이의 산점도
wt <- mtcars$wt     
mpg <- mtcars$mpg
plot(wt, mpg,  #2개의 변수
     main = "중량-연비 그래프", #제목
     xlab = "중량", #x축 레이블
     ylab ="연비(MPG)", #y축 레이블
     col = "red", #point의 color
     pch = 19) #point의 종류

plot(wt,mpg)

mtcars[,"mpg"]

#여러 변수들 간의 산점도
vars <- c("mpg", "disp", "drat", "wt")  #대상 변수
target <- mtcars[,vars]
head(target)
pairs(target,             #(pairs)여러개의 변수를 산점도로 표현 #대상 데이터
      main = "Multi Plots", pch = 19)

#그룹 정보가 있는 두 변수의 산점도
iris.2 <- iris[,3:4] #데이터 준비
point <- as.numeric(iris$Species) #점의 모양 #as.numeric 숫자로 변형하는 함수
point
color <-c("red", "green", "blue") #점의 컬러
plot(iris.2,
    main = "Iris plot",
    pch = c(point),
    col = color[point])


as.numeric(iris$Species)
point

cor(iris[,1:4])
### 기말 시험문제 (상관관계 비교, 회귀식 도출, 회귀식 그리기)
beers =c(5,2,9,8,3,7,3,5,3,5)
bal <- c(0.1,0.03,0.19,0.12,0.04,0.0095,0.07, # 자료 입력
         0.06,0.02,0.05)
tbl <- data.frame(beers,bal)
tbl
plot(bal~beers, data = tbl)
res <- lm(bal~beers, data = tbl) #회귀식 도출
abline(res)  #회귀선 그리기
cor(beers, bal) #상관계수 계산

month = 1:12 
late = c(5,8,7,9,4,6,12,13,8,6,6,4)
plot(month, #x data
     late, #y data
     main = '지각생 통계',
     type = "s", #그래프 종류 선택(알파벳)
     lty = 1, #선 종류(line type)
     lwd = 3, #선 굵기
     xlab = "Month", #x축 제목
     ylab = "Late cnt") #Y축 제목


month = 1:12
late1 = c(5,8,7,9,4,6,12,13,8,6,6,4)
late2 = c(4,6,5,8,7,8,10,11,6,5,7,3)
plot(month,
     late1,
     main = 'Late Students',
     type ='b',
     lty = 1,
     col = 'red',
     xlab = 'Month',
     ylab = 'Late cnt',
     ylim = c(1,15) #ylim은 y축의 범위 지정
)
#lines 함수는 기존
lines(month,
      late2,
      type = "b",
      col = 'blue')

#sec 4 자료의 탐색 실습
install.packages("mlbench")
library(mlbench)
data("BostonHousing")
myds <- BostonHousing[,c("crim","rm","dis","tax","medv")]
myds

grp <- c()
for (i in 1:nrow(myds)) {
  if (myds$medv[i] >= 25.0){
    grp[i] <- "H"
  } else if (myds$medv[i] <= 17.0){
    grp[i] <- "L"
  } else{
    grp[i] <- "M"
  }
}
grp <- factor(grp)
grp <- factor(grp, level = c("H","M","L"))

grp
myds <- data.frame(myds, grp)
myds
str(myds)
head(myds)
table(myds$grp)

par(mfrow=c(1,1))

for(i in 1:2) {
  hist(myds[,i], main = colnames(myds)[i], col = "yellow")
}

par(mfrow=c(2,3))
for(i in 1:5) {
  hist(myds[,i], main = colnames(myds)[i], col = "yellow")
}

par(mfrow=c(2,3))
for(i in 1:5) {
  boxplot(myds[,i], main = colnames(myds)[i], col = "yellow")
}

par(mfrow = c(1,1))
boxplot(myds$crim~myds$grp, main = "1인당 범죄율")
boxplot(myds$rm~myds$grp, main = "방의 개수")

pairs(myds[,-6])
point <- as.integer(myds$grp)
color <- c('red','green','blue')
pairs(myds[,-6], pch = point, col = color[point])

cor(myds[,-6])
