m <- as.matrix(read.table("MAX_Tagged skeleton.txt"))

mean_m <- mean(m)
mean_m
N <- sum(m>0)
N
dim(m)
total_pixels <- nrow(m)*ncol(m)
total_pixels

m_minus_mean <- m - mean_m

sq_m_minus_mean <- m_minus_mean^2

summa <- sum(sq_m_minus_mean)
summa

sigma <- 1/N*summa
sigma
m_minus_mean_div_sigma <- m_minus_mean/sigma

cub_m_minus_mean_div_sigma <- m_minus_mean_div_sigma^3

summa2 <- sum(cub_m_minus_mean_div_sigma)
summa2
skewness <- 1/N*summa2
skewness
occupancy <- 100*(N/total_pixels)
occupancy
