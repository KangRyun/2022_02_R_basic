###조건문
job.type <- 'a'
if(job.type == 'b'){
  bonus <- 200
}else{
  bonus <- 100
}
bonus
#if 조건문 힌문제

job.type <- 'a'
bonus <- 100
if(job.type == 'b'){
  bonus <- 200
}
print(bonus)

score <- 91
if(score > 90){
  grade <- 'A'
}else if (score> 80){
  grade <- 'B'
}else if (score> 70){
  grade <- 'C'
}else if (score > 60){
  grade <- 'D'
}else{
  grade <- 'F'
}
print(grade)
 
a <- 10
if(a<5){
  print(a)
}else{
    print(a*10)
    print(a/10)
}

a <- 10
b <- 20
if(a>5 & b>30){ # and는 두가지 모두 충족
  print(a+b)
}
if(a>5|b>50){ # or는 두가지 중 하나만 충족
  print(a*b)
}

a <- 85
b <- 95
if(a>90&b>90){
  grade <- 'Excellent'
} else if(a<=90&b<=90){
  grade <- 'So So'
} else{
  grade <- 'Good'
}
print(grade)

a <- 10
b <- 20

if (a>b){
  c <- a
} else {
  c <- b
}
print(c)

a <- 10
b <- 20

c <- ifelse(a>b,a,b)
print(c)

###반복문
for(i in 1:5){
  print('*')
}

for(i in 6:10){
  print(i)
}

for(i in 1:10){
  print(i)
}

i <- 1:10
i

for(i in 1:9){
  cat('2*',i,'=',2*i,'\n')
}

for(i in 1:9){
  j <- i+10
  print(j)
}

for(i in 1:20){
  if(i%%2==0){
    print(i)
  }
}

sum <- 0
result <- c()
for(i in 1:100){
  sum <- sum + i
  result <-rbind(result,c(i,sum)) #rbind 열 cbind 행
}
result
print(sum)

sum <- 0
result <- c()

for(i in 1:100){
  sum <- sum + i
  result_temp <- c(i,sum)
  result <- rbind(result,result_temp)
}
print(sum)
print(result)
print(result_temp)

iris

norow <- nrow(iris)
mylabel <- c()
for(i in 1:norow){
  if (iris$Petal.Length[i] <= 1.6){
    mylabel[i] <- 'L'
  } else if(iris$Petal.Length[i] >= 5.1){
    mylabel[i] <- 'H'
  } else {
    mylabel[i] <- 'M'
  }
}
cbind(mylabel)
print(mylabel)
newds <- data.frame(iris$Petal.Length, mylabel)
head(newds)

sum <- 0
i <- 1
while(i <= 100){    #while문을 사용할때는 범위를 지정한다다
  sum <- sum + i
  print(c(i,sum))
  i <- i - 1
  
}
print(sum)
print(i)

sum <- 0
for(i in 1:10){
  sum <- sum + i
  if(i>=5) break
}
sum

sum <- 0       #python의 continue와 같은 함수
for(i in 1:10){ 
  if(i%%2==0) next
  sum <- sum + i
  print(c(i,sum))
}
print(sum)

iris_test <- iris[,1:4]
i_all <- c()
for (i in 1:nrow(iris)){
  i_mean <- mean(as.numeric(iris_test[i,]))
  i_all <- c(i_all,i_mean)
}
i_mean
i_all
mean(as.numeric(iris_test[i,])) #as.numeric 수치형으로 변환

#apply(데이터셋, 행/열방향 지정, 적용함수)
apply(iris[,1:4],1, mean) #row(행)방향으로 함수 적용
apply(iris[,1:4],2, mean) #col(열)방향으로 함수 적용

#chapter4 조건문 반복문 함수 제일 중요한 부분

mymax <- function(x,y) {
  num.max <- x
  if (y < x){
    num.max <- y
  }
  return(num.max)
}

mymax(10,15)
a <- mymax(20,15)
b <- mymax(31,45)
print(a+b)

mydiv <- function(x,y=2){
  result <- x/y
  return(result)
}

mydiv(x=10,y=3)
mydiv(10,3)
mydiv(10)

myfunc <- function(x,y){
  val.sum <- x+y
  val.mul <- x*y
  return(list(sum=val.sum,mul=val.mul))
}

result <- myfunc(5,8)
s <- result$sum
m <- result$mul
cat('5+8=', s, '\n')
cat('5*8=', m, '\n')
