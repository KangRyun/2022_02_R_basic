##시험문제
setwd("D:/2022/falls/R basic")
tasue <- read.csv("tausue_2021data.csv", fileEncoding = "cp949")
tasue
ncol(tasue) #열의 개수
nrow(tasue) #행의 개수

is.na(tasue) #결측값 확인
sum(is.na(tasue)) #결측값 개수 확인
tasue_NA <- tasue[complete.cases(tasue),]
head(tasue_NA)

hist(tasue_NA[,2],
     main = "타슈",
     border = "red",
     col = "red",
     las = 2,
     )
par(mfrow = c(2,4))
for (i in 1:8){
  hist(tasue[,i], main = colnames(tasue)[i], col = 'blue')
}
for(i in 1:8){
  boxplot(tasue[,i], main = colnames(tasue)[i])
}
par(mfrow = c(1,1))

boxplot(tasue$반납일, main = colnames(tasue)[5])
boxplot.stats(tasue$대여일)$out
par(mfrow = c(1,1))
out.val <- boxplot.stats(tasue$반납일)$out
tasue$반납일[tasue$반납일 %in%  out.val] <- NA
head(tasue)

target <- tasue[,-10]
plot(tasue$대여시,tasue$반납시)
a <- c(1,2,3,4,5)
a[3] = 6
a
