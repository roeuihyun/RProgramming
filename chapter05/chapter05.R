#chapeter5 표와 그래프 만들기
head(faithful)
ls()
waiting <- faithful[,2]
range(waiting)
table(waiting)

breaks <- seq(40, 100, by = 5)
breaks
wait_time <- cut(waiting, breaks, right = FALSE) #오른쪽을 열어두지 않으면 값이 섞인다
#즉 구간이 왼쪽최저값 <= 구간 < 오른쪽최대값이 되는것이다.
wait_time
cbind(table(wait_time))

attach(dataset)
table(Sex,Age)

head(grades)
attach(dataset)

Car_Colors <- data.frame(Color =factor(), Percent = numeric())
Car_Colors
attach(Car_Colors)
pie(Percent)

#page150
colors
colors()
pie(Percent, col = colors())

#page151
names(Percent) <- c("Silver","Black","White","Gray","Red","Blue","Brown","Green","Other")
names(Percent)
pie(Percent, col = colors, main = "Pie Graph of Auto Color Preference") #원 차트가 나타남

#막대 도표
barplot(Percent, col = colors, main = "Bar Graph of Auto Color Preference") #막대 차트가 나타남
attach(grades)
barplot(table(Grade), col = c("red","green","blue"),main = "Grade Level")

#page154
#박스 도표
attach(dataset)
boxplot(Age, Main = "Boxplot for Age")

quizzes
boxplot(quizzes, Main = "Boxplot for quizzes")
#o로 표현되는 점은 특이점이라고 부른다.

#page156
#히스토그램
attach(faithful)
hist(waiting)

#page157
#선 그래프
attach(Min_Wage)
Min_Wage
plot(Value, type = "o", xlab = "Year", col = "blue", main = "Minimum Wage")
plot(Year, Value, type = "o") #type = "o"는 overplotting을 의미한다. 자세한건 help(plot) 을 확인

#page159
GPA
Hours
attach(GPA)
plot(Hours, GPA)