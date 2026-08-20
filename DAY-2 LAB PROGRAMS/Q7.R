water <- data.frame(
  hardness=c(98,78,90,85,110,95,70,88,65,120),
  mortality=c(240,310,260,280,200,250,330,270,350,180)
)

plot(water$hardness, water$mortality,
     xlab="Hardness",
     ylab="Mortality",
     pch=19)

model <- lm(mortality ~ hardness, data=water)

abline(model,col="red")

predict(model,data.frame(hardness=88))