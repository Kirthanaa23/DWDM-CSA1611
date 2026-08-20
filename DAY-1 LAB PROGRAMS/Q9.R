marks <- c(55,60,71,63,55,65,50,55,58,59,61,63,65,67,71,72,75)

num_bins <- 3

cut(marks,breaks=num_bins,labels=FALSE)

hist(marks,breaks=num_bins,xlab="Marks",main="Histogram")

tapply(marks,cut(marks,num_bins),mean)
tapply(marks,cut(marks,num_bins),median)
tapply(marks,cut(marks,num_bins),function(x)c(min(x),max(x)))