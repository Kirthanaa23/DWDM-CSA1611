price <- c(1,1,5,5,5,5,5,8,8,10,10,10,10,12,14,14,14,15,15,15,15,15,15,18,18,18,18,18,20,20,20,20,20,20,21,21,21,21,25,25,25,25,25,28,28,30)

bins <- 3

group <- cut(seq_along(price), breaks=bins, labels=FALSE)

tapply(price, group, mean)

tapply(price, group, function(x) c(min(x), max(x)))

hist(price, breaks=bins, col="lightblue", main="Histogram", xlab="Price")