#chapeter3 함수 만들기
#page98
#기본적인 R 함수 코드를 이용하여 R 함수 만들기
function (x, center = median(x),constant = 1.4826, na.rm = FALSE, high =FALSE){
  if(na.rm)
    x <- x[!is.na(x)]
  n <- length(x)
  constant * if((low || high) && n%%2 == 0){
    if(low && high){
      stop("'low' and 'high' cannot be both TRUE")
    }
    n2 <- n %/% 2 + as.integer(high)
    sort(abs(x - center),partial =n2)[n2]
  }
  else{
    median(abs(x - center))
  }
}

rm(list=ls())

#page100
#Function for calculating the mean absolute deviation
MeanAbsDev <- function(x){
  AbsDev <- abs(x - mean(x)) # x-평균의 절대값
  MAD <- mean (AbsDev)
  cat("The mean absolute deviation is : ",MAD,"\n")
}

MeanAbsDev(Age)

#page102
zcrit <- c(1.96,1.96,1.96,1.96,1.96,1.96,1.96,1.96,1.96,1.96)
df <- c(1,4,9,29,49,99,199,499,999,9999)
tcrit <- c(12.706205,2.776445,2.262157,2.045230,2.009575,1.984217,1.971957,1.964729,1.962341,1.960201)
cbind(zcrit,df,tcrit)

#page103
confint <-function(x, alpha = .05){
  conflevel = (1 - alpha) * 100 #신뢰구간 = (1 - alpha) * 100
  stderr <- sd(x) / sqrt(length(x)) #표준오차
  tcrit <- qt(1 - alpha/2, length(x) - 1) # 주어진 확률의 t값을 구함
  margin <- stderr * tcrit #오차한계
  lower <- mean(x) - margin
  upper <- mean(x) + margin
  cat(conflevel,"Percent confidence Interval", "\n")
  cat("Mean:", mean(x) , "Std. Error:", stderr,"\n")
  cat("Lower Limit:", lower, "\n")
  cat("Upper Limit:", upper, "\n")
}
confint(age)
confint(age, .10) #신뢰도 90%
confint(age, .01) #신뢰도 99%

rm(list=ls())

#page106
#Function to create "prime numbers."
#Formula is x^2 - x + 41 이 값은 합성수 소수가 아니다.
TryIt <- function(x){
  flush.console()
  for(n in x){
    result <- n^2 - n + 41
    cat("For x =", "n", "Result is", result, "\n")
  }
}

TryIt(0)
TryIt(1)
TryIt(2)
TryIt(3)
TryIt(4)
TryIt(5)
TryIt(6)
TryIt(7)
TryIt(8)
TryIt(9)
TryIt(10)

rm(list=ls())

#page108
x <- 0:50
y <- x^2 - x + 41
y

#page109
#if else() 함수를 사용하여 if-else 구문을 벡터화 하기
ifelse(1>0,"y",n)
ifelse(-1>0,"y",n) #거짓이기 때문에 두번째 n을 이용하려고 하는데 n이 없다

x <- -5:5
x
sqrt(x)
sqrt(ifelse(x >=0 , x, NA))

rm(list=ls())

#page112
#소수인지를 검사하는 함수
primality <- function(x){
  stopifnot (x >= 2) #만약 2이상이 아닌숫자면 그냥 멈춘다.
  limit <- trunc(sqrt(x) + 1) # 소수의 판별 제한 수는 제곱근 + 1의 버림수
  testvec <- 2:limit #소수를 테스트할 벡터
  results <- x %% testvec #소수를 테스트할 벡터의 나머지를 저장하는 변수
  check <- any(results == 0) #결과값들중 하나라도 0이 아닌게 있는지 검사한걸 저장하는 변수
  outcome <- "Yes."
  if(check == TRUE) outcome <- "No."
  if(x == 2) outcome <- "Yes."
  cat("Is",x,"prime?",outcome,"\n")
}

primality(2)
primality(3)
primality(4)
primality(5)
primality(6)
primality(7)
primality(8)
primality(9)
primality(10)
primality(1681)
primality(2491)
primality(163)
primality(197)
primality(449)
primality(457)

#각 숫자들이 소수인지를 검사한다.
rm(list=ls())

#page114
#Any, All, Which와 같은 유용한 함수들의 사용을 알아보자
x <- 2491
limit <- trunc(sqrt(x) + 1)
limit
testvector <- 2:50
testvector
x %% testvector
2491 / 47
any(x %% testvector == 0) # x %% testvector 결과값중 0인게 있는지 검사하라(any함수)
which(testvector == 10)
which(x == 10)
t.test

rm(list=ls())

#page119
weights <- c(169.1, 144.2, 179.3, 152.6, 166.8,
             135.0, 201.5, 175.2, 139.0, 156.3,
             186.6, 191.1, 151.3, 209.4, 237.1,
             176.7, 220.6, 166.1, 137.4, 164.2,
             137.4, 164.2, 162.4, 151.8, 144.1,
             204.6, 193.8, 172.9, 161.9, 174.8,
             169.8, 213.3, 198.0, 173.3, 214.5,
             137.1, 119.5, 189.1, 164.7, 170.1)

confint(weights)
t.test(weights, mu = 191, conf.level = .10)