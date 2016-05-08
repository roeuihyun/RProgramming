#chapeter2 R프로그래밍
#page70
#R에서의 입력과 출력
getOption("digits")
pi
options(digits = 4) # 자리수를 변경한다.
pi

#프로그램 실행 도중에 다음과 같이 사용자에게 데이터를 직접 입력 받을 수 있다.
size <- readline("How Many digits do you want to display?")
pi
options(digits = size)
pi
rm(list=ls())

#page74
#환경에서 정의된 이름과 그 계층적 구조를 search()함수를 통해 확인할 수 있다.
search()

#page77
#for 반복문
i <- c(1:15)
for(n in i) {
  print(n * 10)
}
#for(객체 in 객체에 넣을값) 반복할 표현 식
carbrands <- c("Honda","Toyota","Ford","GM","BMW","Fiat")
for(brand in carbrands){
  print(brand)  
}
rm(list=ls())

#page79
#while과 repeat 반복 구문
even <- 0
while (even < 10){
  even <- even + 2
  print(even)
}

i <- 1
repeat{
  print(i)
  i <- i + 1
  if(i > 5){
    break
  }
}
rm(list=ls())

#page81
#Apply 계열 함수를 사용하여 명시적인 반복 구문 사용 피하기
median(percapita[2:9])
lapply(percapita[2:9], median) #안됨
apply(percapita[2:9],2, median) #안됨

class1 <- c(17,18,12,13,15,14,20,11,16,17)
class2 <- c(18,15,16,19,20,20,19,17,14)
class3 <- c(17,16,15,18,11,10)
class4 <- c(18,15,16,19,20,20,19,17,14,19)
classes <- list(class1,class2,class3,class4)
classes
lapply(classes, length)
sapply(classes, length)
vapply(classes, mean,FUN.VALUE=double(1))
#tapply(classes[1],classes[4],mean)
class(lapply(classes, length)) #list 형태
class(sapply(classes, length))
class(vapply(classes, mean,FUN.VALUE=double(1)))

sapply(classes, mean)
