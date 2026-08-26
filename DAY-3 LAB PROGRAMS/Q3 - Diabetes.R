diabetes <- read.csv("C:\\Users\\balaj\\Downloads\\diabetes.csv")

head(diabetes)
str(diabetes)
summary(diabetes)


linear_model <- lm(Outcome ~ Age, data = diabetes)

cat("Linear Regression Result:\n")
summary(linear_model)

plot(diabetes$Age, diabetes$Outcome,
     main = "Age vs Diabetes Outcome",
     xlab = "Age",
     ylab = "Diabetes Outcome",
     pch = 19,
     col = "blue")

abline(linear_model, col = "red", lwd = 2)


multiple_model <- lm(Outcome ~ Age + Glucose + BMI +
                       BloodPressure + Insulin,
                     data = diabetes)

cat("Multiple Regression Result:\n")
summary(multiple_model)


diabetes$Predicted_Outcome <- predict(multiple_model)

head(diabetes)

par(mfrow = c(2,2))
plot(multiple_model)