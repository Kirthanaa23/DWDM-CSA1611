marks <- c(55,60,71,63,55,65,50,55,58,59,61,63,65,67,71,72,75)

marks <- sort(marks)

k <- 3
n <- length(marks)

eq_freq <- cut(
  seq_along(marks),
  breaks = c(0, ceiling(n/3), ceiling(2*n/3), n),
  labels = c("Bin 1", "Bin 2", "Bin 3")
)

print(data.frame(Marks = marks, Bin = eq_freq))

hist(marks,
     breaks = c(49.5,58.5,65.5,75.5),
     main = "Equal-Frequency Partitioning",
     xlab = "Marks")


min_mark <- min(marks)
max_mark <- max(marks)

breaks_width <- seq(min_mark, max_mark, length.out = k + 1)

eq_width <- cut(
  marks,
  breaks = breaks_width,
  include.lowest = TRUE,
  labels = c("Bin 1", "Bin 2", "Bin 3")
)

print(data.frame(Marks = marks, Bin = eq_width))

hist(marks,
     breaks = breaks_width,
     main = "Equal-Width Partitioning",
     xlab = "Marks")


set.seed(123)

km <- kmeans(marks, centers = 3)

clustered_data <- data.frame(
  Marks = marks,
  Cluster = km$cluster
)

print(clustered_data)
print(km$centers)

hist(marks,
     breaks = 10,
     main = "Clustering Partitioning",
     xlab = "Marks")