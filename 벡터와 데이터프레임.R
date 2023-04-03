seq(1,5,2)
1:10
seq(1,10,2)
rep(1:3,2)

c(seq(1,5,2), 1:10, seq(1,10,2), rep(1:3,2))

head(iris)
#5개 데이터만
iris[1:5,]
#홀수 데이터만 
iris[seq(1,150,2),]
#1번 칼럼만 볼꺼야
iris[1:5, c(1,2)]
#5번 칼럼만 뺄거야
iris[1:5,c(-5)]

irisTemp <- iris[1:5,c(-5)]

irisTemp
#행과 열을 뒤집기 
t(irisTemp)

#iris 데이터의 10의 배수 행만 출력하기 
iris
seq(10,150,10)
iris[seq(10,150,10), ]


#column 5개, length는 벡터에만 사용, dataframe에는 사용 안함 
length(iris)
#dataframe의 행의 개수 
nrow(iris)
#dataframe의 칼럼 개수
ncol(iris)

#
iris[seq(10,nrow(iris),10), ]

#iris의 1~10까지의 데이터 중 Sepal.Length와 Sepal.Width만 출력하기 

iris[1:10, c(1:2)]
iris[1:10, 1:2]

#column이름
colnames(iris)
#row이름
rownames(iris)

#iris의 1~10
iris[1:10, c("Sepal.Length", "Sepal.Width")]

# 기본 통계량 
summary(iris)





