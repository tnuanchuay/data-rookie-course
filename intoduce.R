setwd('/Users/tnuanchuay/Desktop/DataRookie')
getwd()

character(0)

list.files()

v <- 1:100
typeof(v)
class(v)
m <- matrix(0, nrrow = 6, ncol = 6)
m
m <- matrix(2, nrow = 2, ncol = 3)
m
mm <- matrix(1:6, ncol = 3, nrow = 2)
mm
mmm <- m * mm
mmm

friends <- c("bee", 'top', 'ing')
ages = c(30, 26, 25)
male = c(T, T, F)

friends
length(friends)
df = data.frame(friends, ages, male)
df

l = list(df, m, mm, mmm)
l
## R start index at 1 not 0. LOL
l[0]
l[1]

View(df)

x <- c(100, 200, 20, 99, 480); x
x[1:3]
x[c(1,3,5)]

x[x > 100]
sum(x[x>100])

data()

mtcars


help("mtcars")

head(mtcars)
str(mtcars)

summary(mtcars)

m <- head(mtcars); m
m[1:3, ]
m[, 1:3]
m[1:3, "hp"]

result <- cor(mtcars); result

write.csv(result, "mtcar-corelation.csv")
mt = read.csv("mtcar-corelation.csv"); mt 

