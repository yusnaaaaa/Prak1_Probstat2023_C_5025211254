"----------No 1----------"
x = 0:n
n = 10
p = 0.488

#1A
#Pendistribusian banyak bayi laki-laki adalah distribusi binomial dengan parameter n = 10 dan p = 0,488.
dbinom(x, n, p)

#1B
x <- 3
dist_binom <- dbinom(x, n, p)
cat("Probabilitas tepat tiga bayi diantaranya laki-laki =", dist_binom)

#1C
x <- 2
dist_binom <- pbinom(2, n, p)
cat("Probabilitas kurang dari tiga bayi diantaranya laki-laki =", dist_binom)

#1D
x <- 2
dist_binom <- 1-pbinom(2, n, p)
cat("Probabilitas tiga atau lebih bayi diantaranya laki-laki =", dist_binom)

#1E
nilai_har <- mean <- n * p
cat("Nilai harapan banyak bayi laki-laki =", nilai_har)

simp_baku <- sd <- sqrt(n * p * (1 - p))
cat("Simpangan baku banyak bayi laki-laki =", simp_baku)

#1F
set.seed(123)
x <- 1000
hist(rbinom(x, n, p), xlab = "Jumlah Bayi Laki-Laki", ylab = "Frekuensi",main = "Histogram Pendistribusian Banyak Bayi Laki-Laki")

"----------No 2----------"
x = 0
lambda = 1.8

#2A
# Pendistribusian banyak kematian karena kanker tulang adalah distribusi Poisson dengan parameter lambda = 1.8.
dpois(x, lambda)

#2B
x <- 4
dist_pois <- dpois(x, lambda)
cat("Probabilitas ada 4 kematian akibat kanker tulang =", dist_pois)

#2C 
x <- 4
dist_pois <- ppois(x, lambda)
cat("Peluang paling banyak 4 kematian akibat kanker tulang =", dist_pois)

#2D
x <- 4
dist_pois <- 1 - ppois(x, lambda)
cat("Peluang lebih dari 4 kematian akibat kanker tulang =", dist_pois)

#2E
nilai_har <- mean <- lambda
cat("Nilai harapan banyak kematian akibat kanker tulang =", nilai_har)

std_dev <- sd <- sqrt(lambda)
cat("Standar deviasi banyak kematian akibat kanker tulang =", std_dev)

#2F
set.seed(123)
x <- 1000
hist(rpois(x, lambda), xlab = "Jumlah Kematian", ylab = "Frekuensi", main = "Histogram Pendistribusian Banyak Kematian Akibat Kanker Tulang")

#2G
set.seed(123)
n_simulasi <- 1000
replicate(n_simulasi, {
  sum(rpois(1,lambda))
})

#2H
#Penjelasan di file README.md

"----------No 3----------"
v = 10
x = 3
n = 500 

#3A
prob <- dchisq(x, v)
cat("Probabilitas dari distribusi Chi-Square =", prob)

#3B
set.seed(123) 
hist(rchisq(n,v), xlab = "Nilai x", ylab = "Frekuensi", main = "Histogram Distribusi Chi-Square")

#3C
mean_chisq <- v 
cat("Nilai rataan (μ) dari distribusi Chi-Square =", mean_chisq) 

var_chisq <- 2 * v 
cat("varian (σ²) dari distribusi Chi-Square =", var_chisq) 

"----------No 4----------"
n <- 100 
mean <- 45 
sd <- 5

#4A
set.seed(123)
x = rnorm(n, mean, sd)

mean_data = mean(x)
X1 = floor(mean_data)
X1
X2 = ceiling(mean_data)
X2

P = pnorm(X2, mean, sd) - pnorm(X1, mean, sd)
cat("P(X1 ≤ x ≤ X2) =", P)

zScore = (x - mean_data) / sd
print("Z-Score:")
zScore
plot(zScore, main = "Plot Z-Score")

#4B
set.seed(123) 
hist(x, breaks = 50,  xlab = "Nilai", ylab = "Frekuensi", main = "Histogram Distribusi Normal dengan Breaks 50")

#4C
set.seed(123)
variance = sd(x)^2
cat("Nilai varian (σ²) dari hasil data bangkitan acak distribusi Normal =", variance)


"----------No 5----------"

#5A
x <- -2.34
df <- 6
prob <- pt(x, df)
cat("Probabilitas terjadinya suatu peristiwa acak X kurang dari -2.34 dengan 6 derajat kebebasan =", prob)

#5B
df <- 6
x <- 1.34
prob <- 1 - pt(x, df)
cat("Probabilitas terjadinya suatu peristiwa acak X kurang dari 1.34 dengan 6 derajat kebebasan =", prob)

#5C
df = 3
prob <- pt(-1.23, df) + (1-pt(1.23, df))
cat("Probabilitas terjadinya suatu peristiwa acak X dari -1.23 atau lebih besar dari 1.23 dengan 3 derajat kebebasan =", prob)

#5D
df = 14
prob <- pt(0.94, df) - pt(-0.94, df)
cat("Probabilitas terjadinya suatu peristiwa acak X dari -0.94 atau lebih besar dari 0.94 dengan 14 derajat kebebasan =", prob)

#5E
df <- 5
area <- 0.0333
t_score <- qt(area, df, lower.tail = TRUE)
cat("Nilai t-score dengan 5 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di sebelah kiri t-score =", t_score)

#5F
df <- 25
area <- 0.125
t_score <- qt(area, df, lower.tail = FALSE)
cat("Nilai t-score dengan 25 derajat kebebasan yang memiliki luasan 0,125 satuan persegi di bawah kurva dan di sebelah kanan t-score =", t_score)

#5G
df <- 11
area <- 0.75
t_score_left <- qt((1-area)/2, df, lower.tail = TRUE)
t_score_right <- qt((1-area)/2, df, lower.tail = FALSE)
c(t_score_left,t_score_right)

#5H
df <- 23
area <- 0.0333
t_score <- abs(qt(area/2, df)) * c(-1, 1)
c(t_score)
