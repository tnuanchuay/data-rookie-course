library(mlbench)
set.seed(99)

data("BostonHousing")

help("BostonHousing")
str(BostonHousing)

complete.cases(BostonHousing)
mean(complete.cases(BostonHousing))

## remove missing value
BostonHousing <- na.omit(BostonHousing)

summary(BostonHousing)

## Train test split
n <- nrow(BostonHousing); n
id <- sample(n, size = n*0.75); id[1:10]
trainData <- BostonHousing[id, ]; head(trainData)
testData <- BostonHousing[-id, ]; head(testData)

model <- train(medv ~ .,
               data = trainData,
               method = "lm")

p <- predict(model, newdata = testData)

rmse <- sqrt(mean((p - testData$medv) ** 2)); rmse

model$finalModel
