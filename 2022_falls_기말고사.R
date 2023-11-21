point <- c(95, 85, 50, 75, 80, 65, 77, 45, 66, 72)
#1-1
which.max(point) #1번째
max(point) #95

#1-2
which.min(point) #8번째
min(point) #45

#1-3
which(point > 70) #1,2,3,5,7,10 번째

#1-4
grade_A <- point[point > 70]
grade_A
#2-1
mean(mtcars$mpg) #평균값 20.09062
median(mtcars$mpg) #중앙값 19.2
sd(mtcars$mpg) #표준편차6.026948

#2-2
max(mtcars$mpg) #'mpg'중 가장 높은값 33.9

#2-3
boxplot(mtcars$mpg, main = '연비(mpg)')

#2-4
table(mtcars$gear)

#2-5
hist(mtcars$wt,
     main = '중량에 대한 히스토그램',
     xlab = '중량',
     ylab = '빈도 수',
     border = 'black',
     col = 'skyblue')

#2-6
mtcars$cyl
boxplot(mtcars$hp~mtcars$cyl,
        main = 'cyl별 마력수',
        xlab = 'cyl수',
        ylab = '마력')
#cyl이 높을수록 마력은 올라간다

#2-7중량(wt)과 연비(mpg)의 상관계수를 구하세요
cor(mtcars$wt,mtcars$mpg)

#2-8
plot(wt~mpg, data = mtcars
     ,main = '중량과 연비의 관계',
     xlab = '중량(wt)',
     ylab = '연비(mpg)')

#2-9
abline(lm(wt~mpg, data = mtcars))


#3-1
setwd("D:/2022/falls/R basic")
data_raw <- read.csv("tasue_2021_od.csv", fileEncoding = "cp949")

#3-2
ncol(data_raw) #열의 개수
nrow(data_raw) #행의 개수

#3-3
is.na(data_raw) #결측값 확인
sum(is.na(data_raw)) #결측값 개수 확인
data_raw_na <- data_raw[complete.cases(data_raw),]
head(data_raw_na)
sum(is.na(data_raw_na))

#3-4
hist(data_raw_na$이동거리,
     main = "Histogram for 이동거리",
     xlab = '이동거리(m)',
     ylab = '빈도수'
)

#3-5
boxplot(data_raw_na$이동거리,
     main = "이동거리 분포",
     ylab = '이동거리(m)'
)

#3-6
boxplot.stats(data_raw_na$이동거리)$out
out.val <- boxplot.stats(data_raw_na$이동거리)$out
data_raw_na$이동거리[data_raw_na$이동거리 %in%  out.val] <- NA
data_raw_outer <- data_raw_na[complete.cases(data_raw_na),]


boxplot(data_raw_outer$이동거리,
        main = "이동거리 분포",
        ylab = '이동거리(m)'
)
data_raw_outer
#3-7
grp <- c()
for (i in 1:nrow(data_raw_outer)) {
  if (data_raw_outer$이동거리[i] >4000){
    grp[i] <- "Long"
  } else if (data_raw_outer$이동거리[i] > 2000 & data_raw_outer$이동거리[i] <= 4000){
    grp[i] <- "Medium"
  } else if (data_raw_outer$이동거리[i] <= 2000){
    grp[i] <- "Short"
  }
}
grp <- factor(grp, level = c("Long","Medium","Short"))
data_raw_outer <- data.frame(data_raw_outer, grp)
head(data_raw_outer)
#3-8
boxplot(data_raw_outer$이동거리~data_raw_outer$grp, 
        main = '그룹별 이동 거리 분포',
        xlab = 'Group',
        ylab = '이동거리(m)')

#3-9
data_raw_outer[order(data_raw_outer$대여스테이션),]
a <- data_raw_outer[data_raw_outer$대여스테이션 == 122,]
dis <- a$이동거리
mean(dis) #1799.897
