x <- c(100, 70, 60, 90, 90)

min_max <- (x - min(x)) / (max(x) - min(x))

mean_x <- mean(x)
sd_x <- sd(x)
z_score <- (x - mean_x) / sd_x

mad_value <- mean(abs(x - mean_x))
z_mad <- (x - mean_x) / mad_value

j <- ceiling(log10(max(abs(x)) + 1))
decimal_scaling <- x / (10^j)

print("Original Data:")
print(x)

print("Min-Max Normalization:")
print(min_max)

print("Z-Score Normalization:")
print(z_score)

print("Z-Score using Mean Absolute Deviation:")
print(z_mad)
