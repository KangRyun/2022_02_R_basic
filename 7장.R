#12.07
z <- c(1,2,3,NA,5,NA,8)
sum(z)
is.na(z) #NA 여부 확인
sum(is.na(z)) #NA의 개수 확인
sum(z, na.rm=TRUE) #NA를 제와하고 합계를 계산
#na.rm=TRUE 결측값제외

#결측값 대체 및 제거
z1 <- c(1,2,3,NA,5,NA,8)
z2 <- c(5,8,1,NA,3,NA,7)
z1[is.na(z1)] <- 0 #NA를 0으로 치환
z1
z3 <- as.vector(na.omit(z2)) #NA를 제거하고 새로운 벡터 생성
z3
na.omit(z2)
