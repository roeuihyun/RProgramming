#chapeter1-2 입문 

rm(list=ls())

#page23
2^2 
2^3
2*2
2/2
2+2
2-2
0
q()


#chapeter1-2 입문 
#page25
x <-2
x
x^x
x^2
mode(x)

x <- c(1:10)
x
x^x
mode(x)

dim(x) <- c(2,5)
x
mode(x)

x <- c("Hello","world","!")
x
mode(x)

x <- c(TRUE,TRUE,FALSE,FALSE,TRUE,FALSE,TRUE)
x
mode(x)

x <- list("R","12345",FALSE)
x
mode(x)


#chapeter1-3 R 파고들기 
#page27
# *.Rhistory # 지정된 작업 디렉토리에 입력된 모든 명령어 기록을 저장하는 파일
# *.RData # 워크 스페이스를 저장하는 경우 R은 해당 워크 스페이스를 *.RData 확장자 파일로 저장한다.
# getwd() # 현재 작업 디렉토리를 확인
# setwd() # 작업 디렉토리를 변경
# ls() # 현재 원크 스페이스에서 사용하는 객체의 목록을 확인하고 싶을때 사용하는 함수
# ls.str() # 현재 원크 스페이스에서 사용하는 객체의 자세한 정보를 얻고 싶을때 사용한다.
# R의 자료형 또는 모드에서 대표적인 세가지는 바로 숫자, 문자, 논리 값이다.

#chapeter1-4 R에서 데이터 처리하기 
#page31
x <- c(1,2,3,4,"pi")
x
mode(x)
# 굳이 자료형을 섞어서 사용하고 싶다면 그때는 목록이나 데이터 프레임을 사용한다.

#page32
x<- c(1:10)
x
length(x)

y <- 10
length(y)
x + y
# x + y 명령어를 스칼라 덧셈이라고 지칭한다.
#중요한 점은 R의 재활용 규칙에 의해서 구현된다는 점이다.

#page33
x <- c(1:10)
y <- c(0,1)
y
x + y
y <- c(1,3,5)
x + y
# 길이가 긴 벡터는 길이가 짧은 벡터의 배수여야만 한다.

#page34
2 + 3 * x
(2 + 3) * x
sqrt(x)
x %% 4 # 정수형 나누기의 나머지 값을 구하는 연산
y <- 3 + 2i # R은 복소수도 취급할 수 있다.
Re(y) # 복소수의 실수
Im(y) # 복소수의 허수부
x * y

#page35
y <- seq(10)
z <- rep(1,10)
x
y
z
# mode()함수나 typeof()함수를 통해서 객체의 모드를 확인할 수 있다.

#page36
x <- c(x,11:15)
x

#page37
p <- c(0.301,0.176,0.125,0.097,0.079,0.067,0.058,0.051,0.046)
p
v <- c(1:9)
v
sum(v * p) # 데이터들의 평균값

#page38
Dev <- (v - mean(v))^2
Dev
sum(Dev * p) #분산
stdev <- sqrt(sum(Dev * p))
stdev #표준 편차

#행렬 만들기
x <- c(1:10)
x <- matrix(x,2,5)
x

matrix(0,5,2)
matrix(NA,5,2)
#행렬들은 dimensionality라는 속성을 가진다.

#page38
length(x)
mode(x)
typeof(x)
class(x)
dim(x)

y <- c(1:10)
length(y)
mode(y)
typeof(y)
class(y)
attributes(y)

#page41
#행렬의 행과 열 참조
colnames(x) <- c("A","B","C","D","E")
x[1,"C"]
x[1,2]
x[,1]
x[1,]
x[2,"E"]

#page43
acctdata <- c(1, 132, 86.7,
              2, 50, 50.7,
              3, 32, 36.0,
              4, 20, 27.9,
              5, 19, 22.8,
              6, 11, 19.3,
              7, 10, 16.7,
              8, 9, 14.7,
              9, 5, 13.2)
acctdata
acctdata <- matrix(acctdata,9,3,byrow=TRUE)
colnames(acctdata) <- c("digit","actual","expected")
acctdata

#page45
#카이제곱을 나타내 본다.
chisquare <- sum((acctdata[,2]-acctdata[,3])^2/acctdata[,3])
chisquare

#page47
A <- matrix(c(4, 0, 5,
              0, 1, -6,
              3, 0, 4), 3, 3, byrow =TRUE)
A
B <- solve(A) #B는 A의 역 행렬
B
A %*% B # %*%는 행렬의 곱
A * B
B %*% A # %*%는 행렬의 곱
B * A

A
A[,1]
mode(A[,1])
typeof(A[,1])
class(A[,1])
A[1,]
A[1,,drop=FALSE]
A

#class() : R 객체지향 관점에서의 자료형
#typeof() : 원시 자료형 (R 에서의)
#mode() : 원시 자료형 (S1 에서의)

#page48
#목록 = list
address <- list("Larry Pace","102 San Mateo Dr.","Anderson","SC",29625)
address

#page50
#벡터를 기반으로 데이터 프레임 생성
people <- c("Kim","Bob","Ted","Sue","Liz","Amanda","Tricia","Johnathan","Luis","Isabel")
scores <- c(17,19,24,25,16,15,23,24,29,17)
people
scores
quiz_scores <- data.frame(people,scores)
quiz_scores
quiz_scores[2]
quiz_scores[,2]
quiz_scores$scores
attach(quiz_scores)
scores

#page55
#표의 내용을 데이터 프레임으로 만들기
setwd("C:/Dev/RProgramming/chapter01")
percapita <- read.csv("Percapita.csv",header = TRUE)
head(percapita)
class(percapita)
colMeans(percapita[2:9])
summary(percapita[2:9])
rm(list=ls())

#page56
#R에서 누락된 데이터 처리하기
x <- c(1,2,3,4,5,6,NA,8,9,10)
x
mean(x, na.rm = TRUE) #NA 값을 제거하고 평균을 구한다 하지만 NA값은 여전히 벡터에 존재한다.
x
rm(list=ls())