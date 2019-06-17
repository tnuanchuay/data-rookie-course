library(mlbench)

data("PimaIndiansDiabetes")
df <- PimaIndiansDiabetes

## Train test split
n <- nrow(df); n
id <- sample(n, size = n*0.75); id[1:10]
trainData <- df[id, ]; head(trainData)
testData <- df[-id, ]; head(testData)

set.seed(99)
model <- train(diabetes ~ ., data = trainData, method = "glm")
p <- predict(model, newdata = testData)

accuracy = mean(p == testData$diabetes); accuracy

table(p, testData$diabetes, dnn = c("Predict", "Actual"))
accuracy <- (39 + 102) / length(testData); accuracy
precision <- (44) / (44 + 23); precision
recall <- 44 / (44 + 24)
F1 <- (2 * precision * recall) / (precision + recall); F1

confusionMatrix(data = p, reference = testData$diabetes, positive = "pos", mode = "everything")
