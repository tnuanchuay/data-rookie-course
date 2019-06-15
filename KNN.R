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

grid <- expand.grid(k = 1:10)

## train model
ctrl <- trainControl(method = "cv", number = 5, verboseIter = TRUE)
model <- train(medv ~ rm + crim + tax + indus,
                data = trainData,
                tuneGrid = grid,
                tuneLength = 3,
                method = "knn",
                trControl = ctrl)


p <- predict(model, newdata = testData); head(p)

## root mean squared error
rmse <- sqrt(mean((p - testData$medv)**2)); rmse
