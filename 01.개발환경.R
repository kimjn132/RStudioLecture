# 내pc에 어떤 패키지가 있는지 확인할 수 있음 
search()

help(iris)
iris

head(iris, 10)

# explanation
help(head)
example(head)


# some data out of all
sample(head)

aaa <- head(iris, 10)
aaa

#현재 메모리에 있는 데이터 확인
ls()
#현재있는 메모리 중 특정 메모리  삭제
rm(aaa)

# 산술연산자
1+2
2 * 3
32-20

22 / 5   # 4.4 (나눗셈) 
22 %% 5 #2 (나머지)
22%/%5  #몫 4

2**2  #multiply
2^2 #square

sqrt(8) #2.828427

abs(-10)  #절대값 

#난수 random number(0 < x < 1)
runif(10)

#truncate
trunc(100.5)



help(runif)

# method 1
trunc(runif(10, min=1, max=100))
# method 2
trunc(runif(10) * 100)

#lottery
trunc(runif(6, min=1, max=45))

trunc(runif(6)*45)

round(100.567)  #101
round(100.567, 2) #100.57

#내장형 데이터 (DataSet - 데이터 집합)
data()

head(Nile)
tail(Nile)

#histogram
hist(Nile)
#산포도 
plot(iris)


plot(iris$Petal.Length, 
     iris$Sepal.Length,
    col=iris$Species
     )

head(iris)


