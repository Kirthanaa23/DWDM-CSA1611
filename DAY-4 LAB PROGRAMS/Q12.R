AvgSpeed <- c(78,81,82,74,83,82,77,80,70)

TotalTime <- c(39,37,36,42,35,36,40,38,46)

sd_AvgSpeed <- sd(AvgSpeed)
sd_TotalTime <- sd(TotalTime)

var_AvgSpeed <- var(AvgSpeed)
var_TotalTime <- var(TotalTime)

print("Standard Deviation:")
print(sd_AvgSpeed)
print(sd_TotalTime)

print("Variance:")
print(var_AvgSpeed)
print(var_TotalTime)