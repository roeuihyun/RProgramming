#chapeter4 중심성향(Central tendency) 측정
#중심 성향과 관련된 일반적인 세가지 측정은 평균, 중앙값, 최빈값이다.
#표본평균을 구하는 순서
#1. 모든 표본값을 더한다.
#2. 합을 표본의 크기로 나눈다.
#3. 나눈 값이 표본 평균이 된다.
#page126
rm(list=ls())

summary(percapita[2:9])
colMeans((percapita[2:9]))
#R에서의 mean()함수는 최대 50%까지의 데이터를 제거할 수 있는 기능을 제공한다.
attach(percapita)
mean(Yr_2010)
median(Yr_2010)
mean(Yr_2010,trim = .5)
#50%의 데이터가 제거된 평균값은 중앙값과 같음을 할 수 있다.

#page129
#중앙값은 데이터셋의 중앙에 위치하는 값 이다.
#50%의 데이터를 제거한 평균이며 지정된 데이터 벡터에서 중앙값의 위치는 (n + 1)/2
#quantile함수를 사용해서 중앙값뿐 아니라 다른 분위수(또는 퍼센트수)를 구할 수 있다.
apply(percapita[2:9],2,median) # 열을 중심으로 중앙값을 출력
quantile(Yr_2010, 0.90)

#page130
#최빈값은 빈도표를 구해서 최빈값을 구하는 방법도 있지만 다른 방법도 존재한다.
sort(table(Yr_2010))
#CRAN 웹 사이트 혹은 미러 사이트를 통해서 PrettyR 패키지를 받아서 설치하면 된다.
install.packages("prettyR") #패키지를 CRAN 사이트 혹은 Mirror에서 인스톨한다.
#prettyR은 유용한 여러 통계학 함수들을 포함해서 최빈값을 구하는 Mode()함수를 제공한다.
require(prettyR)
Mode(Yr_2010)

#page132
zYr_2010 <- scale(Yr_2010)
zYr_2010
mean(zYr_2010)
apply(zYr_2010,2,sd) #sd는 standard deviation의 줄임말로 표준편차이다. 열을 기준으로한 표준편차

#page133
#모집단에서 N은 요소의 개수, n이 표본의 크기로 일반적으로 칭한다.
#분산의 제곱근은 표준편차이다.
var(Yr_2010) #분산을 구하는 함수
sd(Yr_2010) #표준편차를 구하는 함수
var(percapita[2:9])

#범위
range(weights) #가장 작은 값과 가장 큰값을 나타낸다.
range.diff <- function(x) max(x) - min(x) #가장 큰값에서 가장 작은 값을 빼서 차이를 구하는 함수
range.diff(weights)

#중앙값과 표준 절대 편차
mad(weights)
mad(weights, center = mean(weights))

hist(weights) #R 그래픽 디바이스가 별도의 플롯 창을 열어서 히스토그램을 보여준다.

#page135
IQR(weights) #사분위간 범위 (interquatile range, IQR)

#page136
CV <- function(x) sd(x)/mean(x)
CV
CV(weights)
# 모집단의 표준 분포 크기나 혹은 평균과 표본의 연관성을 구하고 싶은 경우 
# 변동계수(coefficeint of variation)를 구하면된다.

# 종속 변수는 기준 혹은 반응 변수라고 불리며 독립 변수는 예측 변수 혹은 설명 변수라고 불린다.
# 분산과 달리 공분산은 편차 점수의 외적으로 구해지며 따라서 양수나 0 혹은 음수가 될수있다.
cov(Advertising, sales) #양의 상관성이 있다.
cov(Advertising, sales) #공분산/(독립표준편차 * 종속표준편차)
cov(Advertising, sales) / (sd(Advertising) * sd(sales))

# 정상 분포는 그 정의에 따라 비대칭도가 0이며 뾰족한 정도도 0이다.(좌우가 완전히 겹쳐짐)
head(Mileage)
install.packages("psych") #psych 패키지를 설치한다.
require(psych)
skew(City) #비대칭도 
kurtosi(City) #첨도(뾰족도)