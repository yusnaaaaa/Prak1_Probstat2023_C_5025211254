# Prak1_Probstat2023_C_5025211254
Praktikum Probabilitas dan Statistika Modul 1

## Identitas
| Nama                   | NRP        | Kelas     |
| ---                    | ---        | ----------|
| Yusna Millaturrosyidah | 5025211254 |Probstat C |

## No 1
>**Probabilitas seorang bayi yang baru lahir berjenis kelamin laki-laki adalah 0,488. 
Jika kita asumsikan bahwa dalam satu hari di rumah sakit terdapat 10 kelahiran, 
maka:**

* **a. Bagaimana pendistribusian banyak bayi laki-laki? Tentukan distribusi dengan parameter yang sesuai.** <br />
Pendistribusian banyak bayi laki-laki adalah distribusi binomial dengan parameter ```n = 10``` dan ```p = 0,488```. Dengan metode distribusi Binomial, dapat menggunakan fungsi yang telah disediakan pada bahasa R, yaitu fungsi ```dbinom()''' yang berisi parameter x, n, p.
```R
x = 0:n
n = 10
p = 0.488
dbinom(x, n, p)
```
<img width="661" alt="1a" src="https://user-images.githubusercontent.com/91377793/235999524-11e8dde3-ceb3-4352-ba68-68b5a7508fc9.png">

Setelah dijalankan, didapat hasil seperti berikut :
```
0.0012379400 0.0117991160 0.0506071460 0.1286264960 0.2145449757 0.2453858160 0.1949027966 0.1061524160 0.0379411956 0.0080361560 0.0007659461
```
* **b. Berapa probabilitas bahwa tepat tiga bayi di antaranya berjenis kelamin laki-laki?**<br />
Dengan menggunakan distribusi Binomial, dapat menggunakan fungsi yang telah tersedia dalam bahasa R, yaitu fungsi ```dbinom()``` yang berisi parameter x, n, p.
```R
x <- 3
dist_binom <- dbinom(x, n, p)
cat("Probabilitas tepat tiga bayi diantaranya laki-laki =", dist_binom)
```

Setelah dijalankan, maka didapatkan hasil bahwa probabilitas tepat tiga bayi diantaranya laki-laki adalah ```0.1286265```

* **c. Berapa probabilitas bahwa kurang dari tiga bayi di antaranya berjenis kelamin laki-laki?**<br />
Dengan menggunakan distribusi Binomial, dapat menggunakan fungsi yang telah tersedia dalam bahasa R, yaitu fungsi ```pbinom()``` yang berisi parameter x, n, p.
```R
x <- 2
dist_binom <- pbinom(2, n, p)
cat("Probabilitas kurang dari tiga bayi diantaranya laki-laki =", dist_binom)
```

Setelah dijalankan, didapatkan Probabilitas kurang dari tiga bayi diantaranya laki-laki adalah ```0.0636442```

* **d. Berapa probabilitas bahwa tiga atau lebih bayi di antaranya berjenis kelamin laki-laki?**<br />
Dengan menggunakan distribusi Binomial, dapat menggunakan fungsi yang telah tersedia dalam bahasa R, yaitu fungsi ```1-pbinom()``` yang berisi parameter x, n, p.
```R
x <- 2
dist_binom <- 1-pbinom(2, n, p)
cat("Probabilitas tiga atau lebih bayi diantaranya laki-laki =", dist_binom)
```
Setelah dijalankan, didapatkan Probabilitas tiga atau lebih bayi diantaranya laki-laki adalah ```0.9363558```

* **e. Berapa nilai harapan dan simpangan baku banyak bayi laki-laki?**<br />
Rumus yang digunakan untuk mencari nilai harapann atau rata-rata (mean) dari Distribusi Binomial<br />
```mean = n * p```<br />
Rumus yang digunakan untuk mencari nilai simpangan baku atau standar deviasi dari Distribusi Binomial<br />
```standar deviasi = sqrt(n * p * (1 - p))```<br />

```R
n = 10
p = 0.488

nilai_har <- mean <- n * p
cat("Nilai harapan banyak bayi laki-laki =", nilai_har)

simp_baku <- sd <- sqrt(n * p * (1 - p))
cat("Simpangan baku banyak bayi laki-laki =", simp_baku)
```

Maka, didapatkan nilai harapan atau mean ```4.88``` dan simpangan baku atau standar deviasi ```1.580683```

* **f. Gambarkan histogram pendistribusian banyak bayi laki-laki.**<br />
Histogram dari Distribusi Binomial dapat dibuat menggunakan fungsi ```hist()``` dan ```rbinom()``` yang berisi parameter x, n, p.<br />

Code: <br />
```R
set.seed(123)
x <- 1000
hist(rbinom(x, n, p), xlab = "Jumlah Bayi Laki-Laki", ylab = "Frekuensi",main = "Histogram Pendistribusian Banyak Bayi Laki-Laki")
```

Output: <br />

## No 2
>**Misalkan banyak kematian karena kanker tulang untuk seluruh pekerja di pabrik ban dalam 20 tahun ke depan adalah 1,8.**

* **a. Bagaimana pendistribusian banyak kematian karena kanker tulang? Tentukan distribusi dengan parameter yang sesuai.**
Pendistribusian banyak kematian karena kanker tulang adalah distribusi Poisson dengan parameter ```lambda = 1.8```. Dengan metode distribusi Poisson, dapat menggunakan fungsi yang telah disediakan pada bahasa R, yaitu fungsi ```dpois()''' yang berisi parameter x dan lambda.
```R
x = 0
lambda = 1.8
dpois(x, lambda)
```
Setelah dijalankan, didapat hasil seperti berikut : ```[1] 0.1652989```

* **b. Ada 4 kematian akibat kanker tulang yang dilaporkan di kalangan pekerja pabrik ban, apakah itu peristiwa yang tidak biasa? Hitung probabilitas berdasarkan distribusi yang telah dipilih.**<br />
Dengan menggunakan Distribusi Poisson, dapat menggunakan fungsi yang telah tersedia dalam bahasa R, yaitu fungsi ```dpois()``` yang berisi parameter x dan lambda.
```R
x <- 4
dist_pois <- dpois(x, lambda)
cat("Probabilitas ada 4 kematian akibat kanker tulang =", dist_pois)
```

Setelah dijalankan, maka didapatkan bahwa Probabilitas ada 4 kematian akibat kanker tulang yang dilaporkan di kalangan pekerja pabrik ban adalah ```0.07230173```. Ini merupakan peristiwa yang tidak biasa.

* **c. Berapa peluang paling banyak 4 kematian akibat kanker tulang?**<br />
Dengan menggunakan Distribusi Poisson, dapat menggunakan fungsi yang telah tersedia dalam bahasa R, yaitu fungsi ```ppois()``` yang berisi parameter x dan lambda.
```R
x <- 4
dist_pois <- ppois(x, lambda)
cat("Peluang paling banyak 4 kematian akibat kanker tulang =", dist_pois)
```

Setelah dijaLankan, maka didapatkan Peluang paling banyak 4 kematian akibat kanker tulang adalah ```0.9635933```

* **d. Berapa peluang lebih dari 4 kematian akibat kanker tulang?**<br />
Dengan menggunakan Distribusi Poisson, dapat menggunakan fungsi yang telah tersedia dalam bahasa R, yaitu fungsi ```1-ppois()``` yang berisi parameter x dan lambda.
```R
x <- 4
dist_pois <- 1 - ppois(x, lambda)
cat("Peluang lebih dari 4 kematian akibat kanker tulang =", dist_pois)
```

Setelah dijalankan, maka didapatkan bahwa Peluang lebih dari 4 kematian akibat kanker tulang adalah ```0.03640666```

* **e. Berdasarkan distribusi yang telah dipilih, berapakah nilai harapan dan standar deviasi banyak kematian akibat kanker tulang untuk pekerja pabrik ban?**<br />
Rumus yang digunakan untuk mencari nilai harapann atau rata-rata (mean) dari Distribusi Poisson<br />
```mean = lambda```<br />
Rumus yang digunakan untuk mencari nilai simpangan baku atau standar deviasi dari Distribusi Poisson<br />
```standar deviasi = sqrt(lambda)```<br />
```R
nilai_har <- mean <- lambda
cat("Nilai harapan banyak kematian akibat kanker tulang =", nilai_har)

std_dev <- sd <- sqrt(lambda)
cat("Standar deviasi banyak kematian akibat kanker tulang =", std_dev)
```
Maka, didapatkan nilai harapan atau mean ```1.8``` dan simpangan baku atau standar deviasi ```1.341641```

* **f. Gambarkan histogram pendistribusian banyak banyak kematian akibat kanker tulang untuk pekerja pabrik ban.**<br />
Histogram dari Distribusi Binomial dapat dibuat menggunakan fungsi ```hist()``` dan ```rpois()``` yang berisi parameter x dan lambda.<br />

Code: <br />
```R
set.seed(123)
x <- 1000
hist(rpois(x, lambda), xlab = "Jumlah Kematian", ylab = "Frekuensi", main = "Histogram Pendistribusian Banyak Kematian Akibat Kanker Tulang")
```
Output:<br />

* **g. Gunakan simulasi untuk memeriksa hasil sebelumnya.**<br />
Untuk melakukan simulasi pada Distribusi Poisson dapat menggunakan fungsi ```replicate()```yang mana untuk melakukan simulasi distribusi Poisson sebanyak n_simulasi kali. Fungsi ini akan mengembalikan array hasil simulasi dengan dimensi n_simulasi x 1. Pada setiap iterasi simulasi, menggunakan fungsi rpois() untuk menghasilkan nilai Poisson acak yang mewakili jumlah kematian akibat kanker tulang di antara para pekerja pabrik ban selama 20 tahun. Fungsi rpois() memerlukan dua argumen, yaitu jumlah kejadian (n) dan rata-rata (lambda) dari distribusi Poisson yang diinginkan.<br />

Code: <br />
```R
set.seed(123)
n_simulasi <- 1000
replicate(n_simulasi, {
  sum(rpois(1,lambda))
})
```

Setelah dijalankan, maka akan menghasilkan output sebagai berikut:
```
 [1] 1 3 1 3 4 0 2 4 2 1 4 1 2 2 0 4 1 0 1 4 3 2 2 6 2 2 2 2 1 0 4 4 2 3 0 2 3 1 1 1 0 1 1 1 0 0 1 2 1 3 0 1 3 0
 [55] 2 1 0 3 4 1 2 0 1 1 3 1 3 3 3 1 3 2 2 0 2 1 1 2 1 0 1 2 1 3 0 1 5 4 3 1 0 2 1 2 1 1 3 0 2 2 2 1 2 4 2 3 4 2
 [109] 1 0 4 1 0 4 2 0 2 4 2 1 2 1 1 1 1 5 0 0 0 2 2 4 2 3 2 2 3 3 5 1 1 1 0 1 3 1 1 0 1 3 3 2 1 1 0 1 2 1 1 1 2 1
 [163] 2 1 1 2 3 1 1 1 2 1 3 3 2 2 1 2 3 2 3 1 2 1 2 2 1 2 4 4 1 1 5 2 4 2 1 2 0 2 1 4 2 2 1 3 1 1 1 1 2 1 1 2 0 2
 [217] 1 1 3 4 1 4 2 2 0 1 2 2 2 4 2 1 2 0 1 1 1 3 0 3 2 2 1 2 1 2 1 5 5 2 1 1 2 1 2 3 1 1 2 3 4 3 2 4 2 2 1 1 0 2
 [271] 3 0 0 0 3 3 5 2 0 2 3 0 1 1 0 1 0 1 0 2 1 0 0 3 3 3 5 0 0 3 3 0 3 2 2 2 0 0 1 2 1 2 2 0 1 3 3 1 1 3 3 1 0 2
 [325] 0 0 7 0 1 4 2 1 3 3 1 2 2 2 2 5 1 0 2 1 2 1 5 1 1 2 0 5 2 0 2 5 2 1 1 3 0 1 4 1 1 3 1 0 1 2 1 1 3 1 2 5 3 1
 [379] 1 5 2 3 1 3 2 4 1 1 0 1 5 1 2 3 0 1 1 0 0 6 5 0 4 2 1 1 2 0 1 2 1 3 1 2 1 1 4 1 2 0 2 2 2 1 3 2 1 1 0 3 4 2
 [433] 1 6 1 2 0 2 0 0 1 2 3 1 3 2 3 0 1 2 2 1 1 0 1 3 3 3 0 0 5 1 2 0 2 1 1 2 1 3 0 3 1 3 2 1 2 0 1 2 1 3 1 2 4 0
 [487] 0 2 1 3 5 0 1 2 0 6 1 0 2 3 1 1 1 0 1 1 2 2 4 1 2 0 3 1 3 1 1 3 0 3 1 1 1 0 2 2 4 0 5 1 4 2 1 3 0 3 1 3 2 1
 [541] 3 0 3 1 3 5 0 3 3 1 1 1 2 3 2 2 2 2 2 0 0 4 3 1 2 2 1 3 2 3 2 4 2 1 4 2 1 0 2 2 3 3 3 1 3 0 1 2 5 2 2 0 5 0
 [595] 0 3 2 1 4 0 1 2 1 1 1 3 0 3 1 1 2 0 0 6 2 3 4 3 5 0 4 3 3 1 0 1 1 3 1 1 3 3 1 2 0 1 4 3 3 1 2 3 3 1 0 2 3 0
 [649] 1 2 3 4 2 2 3 3 4 0 2 1 3 3 0 2 1 0 4 0 2 1 0 2 0 1 1 2 3 1 1 1 3 2 3 3 4 2 2 1 2 1 0 2 2 0 1 2 0 0 1 1 3 1
 [703] 0 3 1 2 2 1 1 1 2 2 2 2 2 1 0 0 6 0 1 2 3 3 2 3 3 2 3 0 1 3 2 4 1 1 3 5 1 0 6 0 0 2 1 2 3 0 2 4 1 1 0 0 2 2
 [757] 2 3 0 1 2 1 2 2 2 0 0 1 2 2 4 3 2 3 0 1 1 1 2 3 1 3 0 2 3 1 1 0 1 4 4 2 1 2 3 1 0 1 1 1 2 1 0 0 1 5 2 2 3 2
 [811] 0 2 1 3 3 0 1 0 2 2 2 1 2 6 3 0 1 0 1 3 0 3 2 2 2 2 2 2 1 0 4 3 2 0 2 1 4 0 1 0 1 2 6 2 2 1 4 0 0 3 1 0 2 2
 [865] 2 1 0 0 2 2 0 1 3 2 3 2 0 2 4 2 0 4 2 0 3 4 1 1 1 1 2 3 2 2 3 3 0 1 0 3 4 2 3 2 2 2 3 4 3 0 0 0 3 2 1 4 2 2
 [919] 1 1 3 0 1 3 2 2 1 2 0 3 3 1 3 2 4 0 2 3 3 0 5 2 1 1 0 0 1 1 1 1 2 0 4 0 1 4 2 0 1 1 2 1 2 0 4 2 2 0 3 2 3 0
 [973] 3 1 1 2 4 0 1 1 1 2 4 2 4 3 0 0 1 1 0 1 2 1 2 3 2 1 2 0
 ```

* **h. Jelaskan banyak kematian akibat kanker tulang berdasarkan simulasi Anda. Bandingkan jawaban pada pertanyaan 2d dengan hasil simulasi Anda.**<br />
Hasil simulasi dan hasil perhitungan menggunakan fungsi ```ppois``` seharusnya memiliki hasil yang cukup mendekati, namun tidak persis sama karena simulasi menghasilkan nilai acak yang berbeda di setiap iterasinya.
Perhitungan menggunakan ```ppois``` akan menghasilkan hasil yang lebih tepat karena memanfaatkan persamaan matematika yang presisi untuk menghitung peluang secara eksak, sedangkan hasil simulasi hanya dapat memberikan estimasi yang semakin mendekati kebenaran seiring dengan semakin banyaknya iterasi yang dilakukan. Namun, simulasi juga memiliki kelebihan karena dapat digunakan untuk memeriksa asumsi distribusi, mendeteksi outlier, dan memvisualisasikan distribusi secara lebih intuitif.

## No 3
>**Diketahui nilai x = 3 dan v = 10. Tentukan:**

* **a. Fungsi probabilitas dari distribusi Chi-Square.**<br />
Dengan menggunakan Distribusi Chi-Square, dapat menggunakan fungsi yang telah tersedia dalam bahasa R, yaitu fungsi ```dchisq()``` yang berisi parameter x dan v.
```R
v = 10
x = 3
n = 500 

prob <- dchisq(x, v)
cat("Probabilitas dari distribusi Chi-Square =", prob)
```

Setelah dijalankan, maka didapatkan bahwa Probabilitas dari distribusi Chi-Square adalah ```0.02353326```

* **b. Histogram dari distribusi Chi-Square dengan 500 data acak.**<br />
Histogram dari Distribusi Chi-Square dapat dibuat menggunakan fungsi ```hist()``` dan ```rchisq()``` yang berisi parameter n, v.<br />

Code: <br />
```R
set.seed(123) 
hist(rchisq(n,v), xlab = "Nilai x", ylab = "Frekuensi", main = "Histogram Distribusi Chi-Square")
```

Output:<br />

* **c. Nilai rataan (μ) dan varian (σ²) dari distribusi Chi-Square.**<br />
Rumus yang digunakan untuk mencari Nilai rataan (μ) dari Distribusi Chi-Square<br />
```mean = v```<br />
Rumus yang digunakan untuk mencari variansi (σ²) dari Distribusi Chi-Square<br />
```variansi = 2 * v```<br />
```R
mean_chisq <- v 
cat("Nilai rataan (μ) dari distribusi Chi-Square =", mean_chisq) 

var_chisq <- 2 * v 
cat("varian (σ²) dari distribusi Chi-Square =", var_chisq) 
```

Maka, didapatkan Nilai rataan (μ) ```10``` dan varian (σ²) ```20```

## No 4
>**Diketahui data bangkitan acak sebanyak 100 dengan mean = 45 dan sd = 5. 
Tentukan:**

* **a. Fungsi probabilitas dari distribusi Normal P(X1 ≤ x ≤ X2), hitung z-scorenya dan plot data bangkitan acaknya dalam bentuk grafik. Petunjuk (gunakan fungsi plot()).<br />
Keterangan:<br />
X1 = Bilangan bulat terdekat di bawah rata-rata<br />
X2 = Bilangan bulat terdekat di atas rata-rata<br />
Contoh data:<br />
11<br />
1,2,4,2,6,3,10,11,5,3,6,8<br />
rata-rata = 5.083333<br />
X1 = 5<br />
X2 = 6**<br />


* **b. Gambarkan histogram dari distribusi Normal dengan breaks 50**<br/ >
Histogram dari Distribusi Chi-Square dapat dibuat menggunakan fungsi ```hist()``` dan ```rnorm()``` yang berisi parameter n, mean, sd.<br />

Code: <br />
```R
set.seed(123) 
data <- rnorm(n, mean, sd)
hist(data, breaks = 50,  xlab = "Nilai", main = "Histogram Distribusi Normal dengan Breaks 50")
```

Output:<br />

* **c. Nilai varian (σ²) dari hasil data bangkitan acak distribusi Normal.**<br />
Rumus yang digunakan untuk mencari variansi (σ²) dari Distribusi Normal<br />
```R
data <- rnorm(n, mean, sd)
variance <- var(data)
```
```R
set.seed(123)
data <- rnorm(n, mean, sd)
variance <- var(data)
cat("Nilai varian (σ²) dari hasil data bangkitan acak distribusi Normal =", variance)
```
Maka, Nilai varian (σ²) dari hasil data bangkitan acak distribusi Normal ```1.703304```

## No 5
>**Kerjakanlah menggunakan distribusi T-Student.**

* **a. Berapa probabilitas terjadinya suatu peristiwa acak X kurang dari -2,34 dengan 6 derajat kebebasan?**<br />
Dengan menggunakan Distribusi T-Student, dapat menggunakan fungsi yang telah tersedia dalam bahasa R, yaitu fungsi ```pt()``` yang berisi parameter x dan df.
```R
x <- -2.34
df <- 6
prob <- pt(x, df)
cat("Probabilitas terjadinya suatu peristiwa acak X kurang dari -2.34 dengan 6 derajat kebebasan =", prob)
```

Setelah dijalankan, maka didapatkan bahwa probabilitas terjadinya suatu peristiwa acak X kurang dari -2,34 dengan 6 derajat kebebasan ```0.02892197```

* **b. Berapa probabilitas terjadinya suatu peristiwa acak X lebih dari 1,34 dengan 6 derajat kebebasan?**<br />
Dengan menggunakan Distribusi T-Student, dapat menggunakan fungsi yang telah tersedia dalam bahasa R, yaitu fungsi ```1 - pt(x, df)``` yang berisi parameter x dan df.
```R
df <- 6
x <- 1.34
prob <- 1 - pt(x, df)
cat("Probabilitas terjadinya suatu peristiwa acak X kurang dari 1.34 dengan 6 derajat kebebasan =", prob)
```

Setelah dijalankan, maka didapatkan bahwa probabilitas terjadinya suatu peristiwa acak X lebih dari 1,34 dengan 6 derajat kebebasan ```0.11438```


* **c. Berapa probabilitas terjadinya suatu peristiwa acak X kurang dari -1,23 atau lebih besar dari 1,23 dengan 3 derajat kebebasan?**<br />
Dengan menggunakan Distribusi T-Student, dapat menggunakan fungsi yang telah tersedia dalam bahasa R, yaitu fungsi ```pt(x, df) + (1-pt(x, df))``` yang berisi parameter x dan df.
```R
df = 3
prob <- pt(-1.23, df) + (1-pt(1.23, df))
cat("Probabilitas terjadinya suatu peristiwa acak X dari -1.23 atau lebih besar dari 1.23 dengan 3 derajat kebebasan =", prob)
```

Setelah dijalankan, maka didapatkan bahwa probabilitas terjadinya suatu peristiwa acak X kurang dari -1,23 atau lebih besar dari 1,23 dengan 3 derajat kebebasan ```0.306356```

* **d. Berapa probabilitas terjadinya suatu peristiwa acak X berada di antara -0,94 dan 0,94 dengan 14 derajat kebebasan?**<br />
Dengan menggunakan Distribusi T-Student, dapat menggunakan fungsi yang telah tersedia dalam bahasa R, yaitu fungsi ```pt(x, df) - pt(x, df)``` yang berisi parameter x dan df.
```R
df = 14
prob <- pt(0.94, df) - pt(-0.94, df)
cat("Probabilitas terjadinya suatu peristiwa acak X dari -0.94 atau lebih besar dari 0.94 dengan 14 derajat kebebasan =", prob)
```

Setelah dijalankan, maka didapatkan bahwa probabilitas terjadinya suatu peristiwa acak X berada di antara -0,94 dan 0,94 dengan 14 derajat kebebasan ```0.6368457```

* **e. Berapa nilai t-score dengan 5 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di sebelah kiri t-score tersebut?**<br />
Dengan menggunakan Distribusi T-Student, dapat menggunakan fungsi yang telah tersedia dalam bahasa R, yaitu fungsi ```qt()``` yang berisi parameter area dan df.
```R
df <- 5
area <- 0.0333
t_score <- qt(area, df, lower.tail = TRUE)
cat("Nilai t-score dengan 5 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di sebelah kiri t-score =", t_score)
```

Setelah dijalankan, maka didapatkan bahwa nilai t-score dengan 5 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di sebelah kiri t-score ```-2.337342```

* **f. Berapa nilai t-score dengan 25 derajat kebebasan yang memiliki luasan 0,125 satuan persegi di bawah kurva dan di sebelah kanan t-score tersebut?**<br />
Dengan menggunakan Distribusi T-Student, dapat menggunakan fungsi yang telah tersedia dalam bahasa R, yaitu fungsi ```qt()``` yang berisi parameter area dan df.
```R
df <- 25
area <- 0.125
t_score <- qt(area, df, lower.tail = FALSE)
cat("Nilai t-score dengan 25 derajat kebebasan yang memiliki luasan 0,125 satuan persegi di bawah kurva dan di sebelah kanan t-score =", t_score)
```

Setelah dijalankan, maka didapatkan bahwa t-score dengan 25 derajat kebebasan yang memiliki luasan 0,125 satuan persegi di bawah kurva dan di sebelah kanan t-score ```1.177716```

* **g. Berapa nilai t-score dengan 11 derajat kebebasan yang memiliki luasan 0,75 satuan persegi di bawah kurva dan di antara t-score tersebut dan negatif dari nilai t-score tersebut?**<br />
Dengan menggunakan Distribusi T-Student, dapat menggunakan fungsi yang telah tersedia dalam bahasa R, yaitu fungsi ```qt()``` yang berisi parameter area dan df.
```R
df <- 11
area <- 0.75
t_score_left <- qt((1-area)/2, df, lower.tail = TRUE)
t_score_right <- qt((1-area)/2, df, lower.tail = FALSE)
c(t_score_left,t_score_right)
```

Setelah dijalankan, maka didapatkan bahwa nilai t-score dengan 11 derajat kebebasan yang memiliki luasan 0,75 satuan persegi di bawah kurva dan di antara t-score tersebut dan negatif dari nilai t-score ```-1.21446``` dan ```1.21446```

* **h. Berapa nilai t-score dengan 23 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di luar interval antara t-score tersebut dan negatif dari nilai t-score tersebut?**<br />
Dengan menggunakan Distribusi T-Student, dapat menggunakan fungsi yang telah tersedia dalam bahasa R, yaitu fungsi ```abs(qt() * c(-1, 1)``` yang berisi parameter area dan df.
```R
df <- 23
area <- 0.0333
t_score <- abs(qt(area/2, df)) * c(-1, 1)
c(t_score)
```

Setelah dijalankan, maka didapatkan bahwa nilai t-score dengan 23 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di luar interval antara t-score tersebut dan negatif dari nilai t-score ```-2.264201``` dan ```2.264201```
