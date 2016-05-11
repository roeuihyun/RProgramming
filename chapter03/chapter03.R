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

sapply(classes, mean) #sapply 함수를 사용해서 목록에 mean 함수 적용
sapply(classes, summary) #sapply 함수를 사용해서 목록에 summary 함수 적용
rm(list=ls())
#page85
#피타고라스의 정리

s <- 2
t <- 1
a <- s^2 - t^2
b <- 2*s*t
c <- s^2 + t^2
a
b
c

rm(list=ls())

#Generate Pythagorean triples
pythag <- function(x){
  s <- x[1]pythag(1,2)
  t <- x[2]
  a <- t^2 - s^2
  b <- 2 * s * t
  c <- s^2 + t^2
  cat("The Pythagorean triple is: ",a,b,c,"\n")
}
input <- scan()

pythag(input)

#page88
#R을 사용해서 2차 방정식 풀기
quadratic <- function(coeff){
  a <- coeff[1]
  b <- coeff[2]
  c <- coeff[3]
  d <- b^2 - (4*a*c)
  cat("The discriminant is: ", d, "\n")
  if(d < 0) cat("There are no real roots. ", "\n")
  if(d >= 0){
    root1 <- (-b+sqrt(d))/(2*a)
    root2 <- (-b-sqrt(d))/(2*a)
    cat("root1: ",root1,"\n")
    cat("root2: ",root2,"\n")
  }
}
quadratic(c(2,-1,-8))

rm(list=ls())

#page90
#S3 와 S4 클래스
info <- list(name = "Ray", gender = "Male", age = 52, salary = 38500)
class(info) <- "member"
attributes(info)

#새로 만든 클래스는 일반적인 출력 구문을 사용하게 되면 다음과 같이 목록 형태로 출력된다.
info

#S3 스타일
print.member <- function(person){
  cat(person$name, "\n")
  cat("gender",person$sex, "\n")
  cat("age",person$age, "\n")
  cat("salary",person$salary, "\n")
}

info

#S4 스타일
setClass("member",
   representation (
    name = "character" ,
    sex = "character" ,
    age = "numeric" ,
    salary = "numeric" 
   )
)

ray <- new("member",name="Ray", sex="Male", age=52, salary =38500)
ray

