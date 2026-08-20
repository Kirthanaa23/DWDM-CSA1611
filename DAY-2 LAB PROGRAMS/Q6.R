plot(mtcars$mpg,
     type="l",
     col="blue",
     ylim=range(c(mtcars$mpg,mtcars$qsec)),
     xlab="Index",
     ylab="Value")

lines(mtcars$qsec,col="red")

legend("topright",
       legend=c("mpg","qsec"),
       col=c("blue","red"),
       lty=1)