v <- c(23,23,27,27,39,41,47,49,50,52,54,54,56,57,58,58,60,61)

min_max <- (35-min(v))/(max(v)-min(v))
min_max

m <- mean(v)
s <- 12.94
z_score <- (35-m)/s
z_score

decimal_scaling <- 35/100
decimal_scaling