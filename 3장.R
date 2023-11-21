z <- matrix(1:20, nrow=4, ncol=5)
z
z1 <- matrix(1:20, nrow=4, ncol=5, byrow=T)
z1
x <- 1:4
y <- 5:8
z <- matrix(1:20, nrow = 4, ncol = 5)
m1 <- cbind(x,y)
m1
m2 <- rbind(x,y)
m2
m3 <- rbind(m2,x)
m3
m4 <- cbind(z,x)
m4
#rbind는 행으로 합치고 Cbind는 열로 합친다
#데이터를 합칠때 데이터의 모양을 생각하여 직사각형모양으로 합치기

z <- matrix(1:20, nrow = 4, ncol = 5)
z
z[2,3]
z[1,4]
z[2,] #콤마의 뜻은 전체를 뜻한다
z[,4] #열의 자리,행의 자리가 비어있는 곳이 전체를 말한다
z[,]
z

z <- matrix(1:20, nrow = 4, ncol = 5)
z
z[2,1:3] # 2행의 1번째에서 3번째 값 추출
z[1,c(1,2,4)] #1행의 1,2,4번째 값 추출
z[1:2,] #전체행의 1,2번째 행 추출
z[,c(1,4)]#전체행의 첫번째 네번째 열 추출

score <- matrix(c(90,85,69,78,
                  85,96,49,95,
                  90,80,70,60),
                nrow=4,ncol=3)
score
rownames(score) <- c('John','Tom','Mark','Jane') #행에 이름부여
colnames(score) <- c('English','Math','Science') #열에 이름부여
score
score['John','Math'] #이름으로써 인덱싱(가장중요함)
score['Tom',c('Math','Science')]
score['Mark',]
score[,'English']
rownames(score) #score에서 행의 이름 출력
colnames(score) #score에서 열의 이름 출력
colnames(score)[2]

city <- c('Seoul','Tokyo','Washington')
rank <- c(1,3,2)
city.info <- data.frame(city,rank) #city와 rank를 data.frame으로 데이터프레임 생성
city.info #데이터프레임은 숫자형와 문자형을 같이 묶을수 있음
str(city.info)

iris

iris[1:5,] #1~5행의 데이터
iris[1:5,c(1,3)] #1~5행의 데이터 중 1,3열의 데이터
iris[,c(1:2)] #1,2열의 모든 데이터
iris[,c(1,3,5)] #1,3,5열의 모든 데이터
iris[,c("Sepal.Length","Species")] #1~5행의 모든 데이터

str(iris)

dim(iris) #행과 열의 개수 출력
nrow(iris) #행의 개수
ncol(iris) #열의 개수
colnames(iris) #열 이름 출력
head(iris) #데이터셋의 앞부분 일부
tail(iris) # 뒷부분

iris[,5] #row의 데이터 보기
unique(iris[,5]) #row(품종)의 종류 보기(중복제거)
table(iris[,'Species']) #row의 종류별 행의 개수 세기
iris

colSums(iris[,-5]) #열별 합계
colMeans(iris[,-5]) #열별 평균
rowSums(iris[,-5]) #행별 합계
rowMeans(iris[,-5]) #행별평균