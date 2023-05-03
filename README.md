# Prak1_Probstat2023_C_5025211254
Praktikum Probabilitas dan Statistik Modul 1

## Identitas
| Nama                   | NRP        | Kelas     |
| ---                    | ---        | ----------|
| Yusna Millaturrosyidah | 5025211254 |Probstat C |

## No 1
>**Probabilitas seorang bayi yang baru lahir berjenis kelamin laki-laki adalah 0,488. 
Jika kita asumsikan bahwa dalam satu hari di rumah sakit terdapat 10 kelahiran, 
maka:**

* **a. Bagaimana pendistribusian banyak bayi laki-laki? Tentukan distribusi dengan parameter yang sesuai.** <br />
Pendistribusian banyak bayi laki-laki adalah Distribusi Binomial dengan parameter ```n = 10``` dan ```p = 0,488```. Dengan metode Distribusi Binomial, dapat menggunakan fungsi yang telah disediakan pada bahasa R, yaitu fungsi ```dbinom()``` yang berisi parameter x, n, p.
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
Dengan menggunakan Distribusi Binomial, dapat menggunakan fungsi yang telah tersedia dalam bahasa R, yaitu fungsi ```dbinom()``` yang berisi parameter x, n, p.
```R
x <- 3
dist_binom <- dbinom(x, n, p)
cat("Probabilitas tepat tiga bayi diantaranya laki-laki =", dist_binom)
```

<img width="445" alt="image" src="https://user-images.githubusercontent.com/91377793/236000813-348b891f-15e2-42b1-9957-936f1e0b68d8.png">

Setelah dijalankan, maka didapatkan hasil bahwa probabilitas tepat tiga bayi diantaranya laki-laki adalah ```0.1286265```

* **c. Berapa probabilitas bahwa kurang dari tiga bayi di antaranya berjenis kelamin laki-laki?**<br />
Dengan menggunakan Distribusi Binomial, dapat menggunakan fungsi yang telah tersedia dalam bahasa R, yaitu fungsi ```pbinom()``` yang berisi parameter x, n, p.
```R
x <- 2
dist_binom <- pbinom(2, n, p)
cat("Probabilitas kurang dari tiga bayi diantaranya laki-laki =", dist_binom)
```

<img width="481" alt="image" src="https://user-images.githubusercontent.com/91377793/236001546-6898ac2c-46e4-4e79-99e1-77820ed192cb.png">

Setelah dijalankan, didapatkan Probabilitas kurang dari tiga bayi diantaranya laki-laki adalah ```0.0636442```

* **d. Berapa probabilitas bahwa tiga atau lebih bayi di antaranya berjenis kelamin laki-laki?**<br />
Dengan menggunakan Distribusi Binomial, dapat menggunakan fungsi yang telah tersedia dalam bahasa R, yaitu fungsi ```1-pbinom()``` yang berisi parameter x, n, p.
```R
x <- 2
dist_binom <- 1-pbinom(2, n, p)
cat("Probabilitas tiga atau lebih bayi diantaranya laki-laki =", dist_binom)
```

<img width="475" alt="image" src="https://user-images.githubusercontent.com/91377793/236001666-f545733f-0af7-4843-bb09-c9936620615d.png">

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

<img width="355" alt="image" src="https://user-images.githubusercontent.com/91377793/236001906-a9e73be3-90a4-49a0-950e-d5d85a1c9627.png">

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
<img width="393" alt="image" src="https://user-images.githubusercontent.com/91377793/236002147-9dacc043-7acd-4049-bdec-c5fd4d6642cc.png">

## No 2
>**Misalkan banyak kematian karena kanker tulang untuk seluruh pekerja di pabrik ban dalam 20 tahun ke depan adalah 1,8.**

* **a. Bagaimana pendistribusian banyak kematian karena kanker tulang? Tentukan distribusi dengan parameter yang sesuai.**
Pendistribusian banyak kematian karena kanker tulang adalah distribusi Poisson dengan parameter ```lambda = 1.8```. Dengan metode distribusi Poisson, dapat menggunakan fungsi yang telah disediakan pada bahasa R, yaitu fungsi ```dpois()``` yang berisi parameter x dan lambda.
```R
x = 0
lambda = 1.8
dpois(x, lambda)
```

<img width="688" alt="image" src="https://user-images.githubusercontent.com/91377793/236003151-b2374377-1ba3-491d-a75b-f9d5929d8660.png">

Setelah dijalankan, didapat hasil seperti berikut : ```[1] 0.1652989```

* **b. Ada 4 kematian akibat kanker tulang yang dilaporkan di kalangan pekerja pabrik ban, apakah itu peristiwa yang tidak biasa? Hitung probabilitas berdasarkan distribusi yang telah dipilih.**<br />
Dengan menggunakan Distribusi Poisson, dapat menggunakan fungsi yang telah tersedia dalam bahasa R, yaitu fungsi ```dpois()``` yang berisi parameter x dan lambda.
```R
x <- 4
dist_pois <- dpois(x, lambda)
cat("Probabilitas ada 4 kematian akibat kanker tulang =", dist_pois)
```

<img width="428" alt="image" src="https://user-images.githubusercontent.com/91377793/236003365-5cb119f0-0d08-45a3-823f-6498a8b97318.png">

Setelah dijalankan, maka didapatkan bahwa Probabilitas ada 4 kematian akibat kanker tulang yang dilaporkan di kalangan pekerja pabrik ban adalah ```0.07230173```. Ini merupakan peristiwa yang tidak biasa.

* **c. Berapa peluang paling banyak 4 kematian akibat kanker tulang?**<br />
Dengan menggunakan Distribusi Poisson, dapat menggunakan fungsi yang telah tersedia dalam bahasa R, yaitu fungsi ```ppois()``` yang berisi parameter x dan lambda.
```R
x <- 4
dist_pois <- ppois(x, lambda)
cat("Peluang paling banyak 4 kematian akibat kanker tulang =", dist_pois)
```

<img width="461" alt="image" src="https://user-images.githubusercontent.com/91377793/236003683-68e648be-d53b-4aa6-8f1c-81e780cef53f.png">

Setelah dijaLankan, maka didapatkan Peluang paling banyak 4 kematian akibat kanker tulang adalah ```0.9635933```

* **d. Berapa peluang lebih dari 4 kematian akibat kanker tulang?**<br />
Dengan menggunakan Distribusi Poisson, dapat menggunakan fungsi yang telah tersedia dalam bahasa R, yaitu fungsi ```1-ppois()``` yang berisi parameter x dan lambda.
```R
x <- 4
dist_pois <- 1 - ppois(x, lambda)
cat("Peluang lebih dari 4 kematian akibat kanker tulang =", dist_pois)
```

<img width="441" alt="image" src="https://user-images.githubusercontent.com/91377793/236003764-e97e2965-7510-4909-a224-0c510abd6411.png">

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

<img width="442" alt="image" src="https://user-images.githubusercontent.com/91377793/236003837-69af9c81-6a5d-4d94-9ce5-ab6034b5399c.png">

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
<img width="501" alt="image" src="https://user-images.githubusercontent.com/91377793/236003997-a8c70628-cb8d-407a-8b26-4e97f8ca8f5c.png">

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

<img width="633" alt="image" src="https://user-images.githubusercontent.com/91377793/236004147-877c7abb-39c6-43cd-8cb3-804a8caf7ad1.png">


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

<img width="344" alt="image" src="https://user-images.githubusercontent.com/91377793/236005179-55161583-c600-4f78-ae66-da0f9722dd86.png">

Setelah dijalankan, maka didapatkan bahwa Probabilitas dari distribusi Chi-Square adalah ```0.02353326```

* **b. Histogram dari distribusi Chi-Square dengan 500 data acak.**<br />
Histogram dari Distribusi Chi-Square dapat dibuat menggunakan fungsi ```hist()``` dan ```rchisq()``` yang berisi parameter n, v.<br />

Code: <br />
```R
set.seed(123) 
hist(rchisq(n,v), xlab = "Nilai x", ylab = "Frekuensi", main = "Histogram Distribusi Chi-Square")
```

Output:<br />
<img width="353" alt="image" src="https://user-images.githubusercontent.com/91377793/236005292-f1964330-1328-4d14-b9d6-5ece7876e8f1.png">

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

<img width="412" alt="image" src="https://user-images.githubusercontent.com/91377793/236005374-f1732986-61d7-47f6-ad9d-559441e0bd01.png">

Maka, didapatkan Nilai rataan (μ) ```10``` dan varian (σ²) ```20```

## No 4
>**Diketahui data bangkitan acak sebanyak 100 dengan mean = 45 dan sd = 5. 
Tentukan:**

* **a. Fungsi probabilitas dari distribusi Normal P(X1 ≤ x ≤ X2), hitung z-scorenya dan plot data bangkitan acaknya dalam bentuk grafik. Petunjuk (gunakan fungsi plot()).**<br />
Keterangan:<br />
X1 = Bilangan bulat terdekat di bawah rata-rata<br />
X2 = Bilangan bulat terdekat di atas rata-rata<br />
Contoh data:<br />
11<br />
1,2,4,2,6,3,10,11,5,3,6,8<br />
rata-rata = 5.083333<br />
X1 = 5<br />
X2 = 6<br />

Untuk menghitung Z-Score, ketika mengenerate 100 nilai random dapat menggunakan fungsi ```rnorm()``` dengan parameter n, mean, sd. Kemudian mencari mean dari 100 nilai random menggunakan ```mean()``` dengan parameter x. Setelah itu menentukan X1 dan X2 sebagai range peluang dengan menggunakan fungsi ```floor()``` untuk mencari X1 (batas atas dari mean data), dan mencari nilai setelahnya atau X2 (batas atas mean data) menggunakan fungsi ```ceiling()```. Untuk mencari Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), dapat mengurangi ```pnorm()``` dari x2 dan x1. Kemudian untuk mencari Z-Score, dapat menggunakan rumus sebagai berikut:<br />

```Z = (x - mean) / sd)```<br />

Dengan ```x = data hasil generate```. Dan untuk membentuk grafik data generate random, dapat menggunakan fungsi ```plot()```

Code:<br />
```R
n <- 100 
mean <- 45 
sd <- 5

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
```
Output:<br />
<img width="110" alt="image" src="https://user-images.githubusercontent.com/91377793/236019455-5c410656-2c03-4b20-b9ec-d2638c7408f5.png">
<img width="626" alt="image" src="https://user-images.githubusercontent.com/91377793/236019634-f2802edf-5298-4a95-b423-b4ac318109ac.png">
Maka, didapatkan P(X1 ≤ x ≤ X2) = ```0.07925971```

Grafik plot:<br />
<img width="399" alt="image" src="https://user-images.githubusercontent.com/91377793/236019796-8773e445-00c0-4a35-af4b-dfd55a3295c9.png">

* **b. Gambarkan histogram dari distribusi Normal dengan breaks 50**<br />
Histogram dari Distribusi Chi-Square dapat dibuat menggunakan fungsi ```hist()``` dan ```rnorm()``` yang berisi parameter x dan breaks.<br />

Code: <br />
```R
set.seed(123) 
hist(x, breaks = 50,  xlab = "Nilai", ylab = "Frekuensi", main = "Histogram Distribusi Normal dengan Breaks 50")
```

Output:<br />
<img width="405" alt="image" src="https://user-images.githubusercontent.com/91377793/236019986-a916daa3-ae9b-42f2-a3fb-6445338b2037.png">

* **c. Nilai varian (σ²) dari hasil data bangkitan acak distribusi Normal.**<br />
Varian adalah hasil kuadrat dari standar deviasi. Oleh karena itu dapat menggunakan fungsi ```sd()``` yang dikuadratkan dengan parameter x sebagai hasil generate randomnya. Rumus yang digunakan untuk mencari variansi (σ²) dari Distribusi Normal<br />
```variance = sd(x)^2```<br />
```R
set.seed(123)
variance = sd(x)^2
cat("Nilai varian (σ²) dari hasil data bangkitan acak distribusi Normal =", variance)
```

<img width="534" alt="image" src="https://user-images.githubusercontent.com/91377793/236020182-84269dc1-45d7-4bd5-a01d-d9a95615fc99.png">

Maka, Nilai varian (σ²) dari hasil data bangkitan acak distribusi Normal ```20.83082```

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

<img width="658" alt="image" src="https://user-images.githubusercontent.com/91377793/236007357-caa9e3ae-b448-4c10-b8b8-07c58e2f3387.png">

Setelah dijalankan, maka didapatkan bahwa probabilitas terjadinya suatu peristiwa acak X kurang dari -2,34 dengan 6 derajat kebebasan ```0.02892197```

* **b. Berapa probabilitas terjadinya suatu peristiwa acak X lebih dari 1,34 dengan 6 derajat kebebasan?**<br />
Dengan menggunakan Distribusi T-Student, dapat menggunakan fungsi yang telah tersedia dalam bahasa R, yaitu fungsi ```1 - pt(x, df)``` yang berisi parameter x dan df.
```R
df <- 6
x <- 1.34
prob <- 1 - pt(x, df)
cat("Probabilitas terjadinya suatu peristiwa acak X kurang dari 1.34 dengan 6 derajat kebebasan =", prob)
```

<img width="651" alt="image" src="https://user-images.githubusercontent.com/91377793/236007454-e7ce7beb-6467-49af-ba59-1a7f76415c1f.png">

Setelah dijalankan, maka didapatkan bahwa probabilitas terjadinya suatu peristiwa acak X lebih dari 1,34 dengan 6 derajat kebebasan ```0.11438```


* **c. Berapa probabilitas terjadinya suatu peristiwa acak X kurang dari -1,23 atau lebih besar dari 1,23 dengan 3 derajat kebebasan?**<br />
Dengan menggunakan Distribusi T-Student, dapat menggunakan fungsi yang telah tersedia dalam bahasa R, yaitu fungsi ```pt(x, df) + (1-pt(x, df))``` yang berisi parameter x dan df.
```R
df = 3
prob <- pt(-1.23, df) + (1-pt(1.23, df))
cat("Probabilitas terjadinya suatu peristiwa acak X dari -1.23 atau lebih besar dari 1.23 dengan 3 derajat kebebasan =", prob)
```

<img width="784" alt="image" src="https://user-images.githubusercontent.com/91377793/236007554-a3c03f40-b859-45ec-89e7-8a2d549324ba.png">

Setelah dijalankan, maka didapatkan bahwa probabilitas terjadinya suatu peristiwa acak X kurang dari -1,23 atau lebih besar dari 1,23 dengan 3 derajat kebebasan ```0.306356```

* **d. Berapa probabilitas terjadinya suatu peristiwa acak X berada di antara -0,94 dan 0,94 dengan 14 derajat kebebasan?**<br />
Dengan menggunakan Distribusi T-Student, dapat menggunakan fungsi yang telah tersedia dalam bahasa R, yaitu fungsi ```pt(x, df) - pt(x, df)``` yang berisi parameter x dan df.
```R
df = 14
prob <- pt(0.94, df) - pt(-0.94, df)
cat("Probabilitas terjadinya suatu peristiwa acak X dari -0.94 atau lebih besar dari 0.94 dengan 14 derajat kebebasan =", prob)
```

<img width="786" alt="image" src="https://user-images.githubusercontent.com/91377793/236007641-98e08d36-dc9c-4a0c-accd-6189bb03a038.png">

Setelah dijalankan, maka didapatkan bahwa probabilitas terjadinya suatu peristiwa acak X berada di antara -0,94 dan 0,94 dengan 14 derajat kebebasan ```0.6368457```

* **e. Berapa nilai t-score dengan 5 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di sebelah kiri t-score tersebut?**<br />
Dengan menggunakan Distribusi T-Student, dapat menggunakan fungsi yang telah tersedia dalam bahasa R, yaitu fungsi ```qt()``` yang berisi parameter area dan df.
```R
df <- 5
area <- 0.0333
t_score <- qt(area, df, lower.tail = TRUE)
cat("Nilai t-score dengan 5 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di sebelah kiri t-score =", t_score)
```

<img width="887" alt="image" src="https://user-images.githubusercontent.com/91377793/236007747-961c4397-b1ea-4705-9a6a-9b2b9f60167a.png">

Setelah dijalankan, maka didapatkan bahwa nilai t-score dengan 5 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di sebelah kiri t-score ```-2.337342```

* **f. Berapa nilai t-score dengan 25 derajat kebebasan yang memiliki luasan 0,125 satuan persegi di bawah kurva dan di sebelah kanan t-score tersebut?**<br />
Dengan menggunakan Distribusi T-Student, dapat menggunakan fungsi yang telah tersedia dalam bahasa R, yaitu fungsi ```qt()``` yang berisi parameter area dan df.
```R
df <- 25
area <- 0.125
t_score <- qt(area, df, lower.tail = FALSE)
cat("Nilai t-score dengan 25 derajat kebebasan yang memiliki luasan 0,125 satuan persegi di bawah kurva dan di sebelah kanan t-score =", t_score)
```

<img width="896" alt="image" src="https://user-images.githubusercontent.com/91377793/236007809-ee95bccf-f187-496a-b15e-242204122fef.png">

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

<img width="350" alt="image" src="https://user-images.githubusercontent.com/91377793/236007958-5fa2811d-c766-4090-bb59-11bc9c58fee5.png">

Setelah dijalankan, maka didapatkan bahwa nilai t-score dengan 11 derajat kebebasan yang memiliki luasan 0,75 satuan persegi di bawah kurva dan di antara t-score tersebut dan negatif dari nilai t-score ```-1.21446``` dan ```1.21446```

* **h. Berapa nilai t-score dengan 23 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di luar interval antara t-score tersebut dan negatif dari nilai t-score tersebut?**<br />
Dengan menggunakan Distribusi T-Student, dapat menggunakan fungsi yang telah tersedia dalam bahasa R, yaitu fungsi ```abs(qt() * c(-1, 1)``` yang berisi parameter area dan df.
```R
df <- 23
area <- 0.0333
t_score <- abs(qt(area/2, df)) * c(-1, 1)
c(t_score)
```

<img width="268" alt="image" src="https://user-images.githubusercontent.com/91377793/236008032-f7096739-8ce8-48a7-80b9-e447bfbada40.png">

Setelah dijalankan, maka didapatkan bahwa nilai t-score dengan 23 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di luar interval antara t-score tersebut dan negatif dari nilai t-score ```-2.264201``` dan ```2.264201```
