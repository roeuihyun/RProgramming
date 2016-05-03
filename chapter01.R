#chapeter1-2 입문 
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