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

