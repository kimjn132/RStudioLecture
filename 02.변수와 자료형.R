var1 <- 2
2 -> var2
var1 = 2

head(iris)
iris$Sepal.Length
sum(iris$Sepal.Length)
sum(iris$Sepal.Length) + sum(iris$Sepal.Width)

#first only(Array)
iris$Sepal.Length[1]

#first~tenth
iris$Sepal.Length[1:10]
sum(iris$Sepal.Length[1:10])
iris$Sepal.Length[1:100]
sum(1:100)
sum(10, 20, 30)


var1
var1[2] #NA(Not available, 결측치-측정불가)

#combine
num2 <- c(10, 20, 30)
num2
num2[1] + num2[2] #30
sum(num2)  #60

# NA
sum(10, 20, 30, NA) #NA-결측치가 있으면 함수 계산이 안됨 
sum(10, 20, 30, NA, na.rm = T)  #60(na.rm 결측치 삭제)

## 자료형 확인

#숫자인지 물어보기
is.numeric(iris$Sepal.Length) #true
is.integer(iris$Sepal.Length) #false
is.double(iris$Sepal.Length)  #true
class(iris$Sepal.Length)  #numeric

#데이터 프레임 형식인지 확인
is.data.frame(iris)
class(iris)

#결측치 확인
is.na(iris) 
is.na(iris$Sepal.Length)
#F=0, T=1이므로
sum(is.na(iris$Sepal.Length)) #0이면 결측치 없음, 1 이상이면 있음

# iris의 자료구조 확인하기
str(iris) #structure

num1 <- "12345"
is.numeric(num1)  #false

num1 <- c(1,2,3,"4")
is.numeric(num1)  #false 하나만 문자여도 다 문자로 인식
num1    #[1] "1" "2" "3" "4" (모두 문자로 바뀌어져 있음)


## as : 데이터타입바꾸기
num2 <- as.numeric(num1)
num2   #10, 20, 30
# 바뀐 데이터 타입 확인
class(num2)   #"numeric"


## Factor(요인형: 범주형 (category)) 변환
gender <- c("man", "woman", "woman", "man", "man")
gender
class(gender)  #"character"

# 빈도수 확인 
table(gender)
#plot(gender)   #error

#문자열 데이터를 factor로 변환하기 
Ngender <- as.factor(gender)
Ngender

table(Ngender)
plot(Ngender)

str(Ngender)


##날짜형 변환
date1 <- "17-02-28"
date1

as.Date(date1)
as.Date(date1, "%y-%m-%d")#- or / 맞춰줘야됨 

as.Date("2018/12/31", "%y/%m/%d")#NA

as.Date("2018/12/31", "%Y/%m/%d")#Y2K

#진짜 요일 데이터인지 확인하기
datas <- c("02/28/17", "02/29/17", "03/01/17")
datas
as.Date(datas, "%m/%d/%y")#"2017-02-28" NA           "2017-03-01"
#2017년2월29일 없는 날인 것도 확인 가능 (NA)

#날짜 계산 
mydates <- as.Date("2007-06-22", "2004-02-13")  #NA
mydates <- as.Date(c("2007-06-22", "2004-02-13"))#그대로 나옴
mydates
mydates[1] - mydates[2] #Time difference of 1225 days

# 현재 일자 기준으로 날짜 계산하기 
Sys.Date()
class(Sys.Date()) #"Date"

Sys.Date() - as.Date("1993-11-14")

num1 <- 1234
as.character(num1)



#Vector 자료 구조
# - 1차원 선형 자료 구조 형태 
# - 구성 : 변수[첨자], 첨자는 1부터 시작
# - 동일한 자료형의 데이터만 저장 할 수 있다.
# - 백터 생성 함수 : c(combine), seq(sequence), rep(repeat), :
# - 벡터 처리 함수 : sum(), mean(평균), sd(표준편차), union(합집합)

head(iris)
# iris의 Sepal.Length 컬럼의 내용을 1차원 백터로 만들기 

irisSepalLength <- iris$Sepal.Length
irisSepalLength

#백터인지 확인하기
is.vector(irisSepalLength)

#백터 합계,평균, 표준편차 구하기 
class(irisSepalLength)
sum(irisSepalLength)
mean(irisSepalLength)
sd(irisSepalLength)
max(irisSepalLength)
min(irisSepalLength)

irisPetalLength <- iris$Petal.Length
irisPetalLength

max(irisSepalLength) - max(irisPetalLength)

mean(irisPetalLength) - mean(irisSepalLength)
median(irisPetalLength) #4.35
median(irisSepalLength) #5.8

#범위
range(irisSepalLength)[1]
min(irisSepalLength)

range(irisSepalLength)[1] == min(irisSepalLength)#True


#표준편차
sd(irisSepalLength)
a <- c(1,1,3,4,5)
mean(a) #2.8
sd(a) #1.788854


#예제-sepalLength의 1, 10, 11번째 숫자를 더하기 
c(1, 10, 11)  #(1) 인덱스 번호부터 구하기 
irisSepalLength[c(1, 10, 11)] #(2)  5.1 4.9 5.4
sum(irisSepalLength[c(1, 10, 11)])  #(3) 15.4

# iris의 Sepal.Length Database중 1번지~20번지, 30번지, 40번지 합계 구하기
c(1:20, 30, 40)
irisPetalLength[c(1:20, 30, 40)]
sum(irisPetalLength[c(1:20, 30, 40)])

#벡터형 자료의 일부를 변경 
x <- c(10, 20, 30, 40, 50)
x
y <- replace(x, c(2,4), c(200,400))
y
help(replace)

1:10

#초기값, 최종값, 증가값으로 구성되는 벡터 함수 생성
seq(1, 10, 0.5) #1~10까지, 0.5씩 증가 

# 1에서 10까지의 홀수, 1에서 10, 50, 60을 벡터로 만들어 합계 구하기 
seq(1, 10, 2)
c(1:10, 50, 60)
c(seq(1,10,2), c(1:10,50,60))
sum(c(seq(1,10,2), c(1:10,50,60)))
sum(c(seq(1,10,2), 1:10,50,60))

#repeat
c(1:3, 1:3, 1:3)
rep(1:3, 3) #위아래 같은 결과 나옴 
c(rep("red", 4), "green")  #"red"   "red"   "red"   "red"   "green"
rep(c(1,4,7,9), 3)  #1 4 7 9 1 4 7 9 1 4 7 9

rep(1:3, each=3)  #1 1 1 2 2 2 3 3 3

# 1~20까지의 숫자중 짝수만 2번 반복하여 벡터를 만들고 합계 구하기 
rep(seq(0, 20, 2), 2)
sum(rep(seq(0, 20, 2), 2))

x <- c(1,3,5,7)
y <- c(3,5)

#합집합
union(x,y)#중복 없음 

#교집합
interaction(x,y)

#차집합
setdiff(x,y)

#난수 runif 간단 버전 //sample: 모집단
sample(1:10, 2) #runif와 달리 중복 없음 

sample(1:10, 10)  #34 12  8 11 32  7
#정렬 
sort(sample(1:45, 6)) #2 10 17 27 29 37

#iris의 Sepal.Length와 Petal.Length의 교집합
intersect(iris$Sepal.Length, iris$Petal.Length)

#iris의 Sepal.Length와 Petal.Length의 교집합 개수 
length(intersect(iris$Sepal.Length, iris$Petal.Length))

#iris의 Sepal.Length와 Petal.Length의 합집합 개수 
length(iris$Sepal.Length) #150
length(iris$Petal.Length) #150
union(iris$Sepal.Length, iris$Petal.Length)
length(union(iris$Sepal.Length, iris$Petal.Length)) #54  >>  중복 값이 없기 때문에 합집합이어도 54개 밖에 안나옴 

#1차원 벡터 Data에 이름 설정하기
age <- c(30, 35, 40); age
names(age) <- c("유비", "관우", "장비"); age

#중복값을 제거하기 
iris$Petal.Length
unique(iris$Petal.Length)
unique(iris$Species)

x <- rep(c("a", "b", "c"), 4)
# 벡터에 a가 있으면 1을 보여준다.
match(x, "a")

sum(match(x, "a"), NA, na.rm = T) #4

#빈도수 
table(match(x, "a"))


match(x, c("a", "b"))
table(match(x, c("a", "b")))

name <- c("Apple", "Computer", "Samsung", "Communication")

#name에서 Co를 가지고 있는 단어의 번지수
grep("Co", name)

name[grep("Co", name)]

#name에서 om을 가지고 있는 단어 출력하기
grep("om", name)
name[grep("om", name)]

a <- 1:500


#10번 ~ 전체 Data중 끝에서 5개는 빼고 출력 
a[10:(length(a)-5)]

a <- 10:50

#1번지 값 지우기 
a[1]
a[-1]
a
a <- a[-1]
a

# 10, 11, 12번지 값 지우기
a[c(10:12)]
a[-c(10:12)]

a <- 10:50

# a의 홀수 번지 Data의 합계 구하기 
length(a)
# 홀수 번지수 구하기 
seq(1, length(a), 2)
# 홀수 번지수의 숫자 구하기 
a[seq(1, length(a), 2)]
#홀수 번지수의 숫자 합하기 
sum(a[seq(1, length(a), 2)])

#최대값과 최소값의 차이가 3보다 큰지 확인 
max(a)-min(a) > 3




