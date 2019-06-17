
library(mlbench)

data("PimaIndiansDiabetes")
df <- PimaIndiansDiabetes

## Train test split
n <- nrow(df); n
id <- sample(n, size = n*0.75); id[1:10]
trainData <- df[id, ]; head(trainData)
testData <- df[-id, ]; head(testData)

set.seed(99)
model <- train(diabetes ~ ., data = trainData, method = "rpart")
p <- predict(model, newdata = testData)

accuracy = mean(p == testData$diabetes); accuracy
