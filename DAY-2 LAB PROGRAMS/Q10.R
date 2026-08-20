diabetes <- data.frame(
  Age=c(25,30,35,40,45,50,55,60),
  BloodPressure=c(70,72,75,80,82,85,88,90)
)

plot(diabetes$Age,
     diabetes$BloodPressure,
     pch=19,
     col="blue",
     xlab="Age",
     ylab="Blood Pressure",
     main="Age vs Blood Pressure")

barplot(diabetes$BloodPressure,
        names.arg=diabetes$Age,
        col="green",
        xlab="Age",
        ylab="Blood Pressure")