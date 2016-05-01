#chapeter1-2 입문 page23
2^2 
2^3
2*2
2/2
2+2
2-2
0
q()


#chapeter1-2 입문 page25
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


#chapeter1-3 R 파고들기 page27
*.Rhistory # 지정된 작업 디렉토리에 입력된 모든 명령어 기록을 저장하는 파일
*.RData # 워크 스페이스를 저장하는 경우 R은 해당 워크 스페이스를 *.RData 확장자 파일로 저장한다.
getwd() # 현재 작업 디렉토리를 확인
setwd() # 작업 디렉토리를 변경
ls() # 현재 원크 스페이스에서 사용하는 객체의 목록을 확인하고 싶을때 사용하는 함수
ls.str() # 현재 원크 스페이스에서 사용하는 객체의 자세한 정보를 얻고 싶을때 사용한다.
# R의 자료형 또는 모드에서 대표적인 세가지는 바로 숫자, 문자, 논리 값이다.

