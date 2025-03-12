#1. Buatlah vektor berikut di R dan simpan dalam variabel v L=:
v<-c(5,10,15,20,25);v

#2. Diketahui dua vektor dalam R :
a<- c(2,4,6,8);a
b<- c(1,3,5,7);b
#Tuliskan kode R untuk:
#a. menjumlahkan a dan b
penjumlahan <- a+b
print(penjumlahan)
#b. mengalikan a dengan b secara elemen per elemen
mengalikan <- a*b
print(mengalikan)
#c. menaikkan pangkat pada setiap elemen a dengan nilai a
pangkatkan <- a^2
print(pangkatkan)

#3. Diketahui vektor berikut :
x <- c(10,20,30,40,50,60);x
#a. ambil elemen ke-3 dari vektor x
ketiga <- x[3]
print(ketiga)
#b. Ambil elemen ke-2 sampai ke-5 dari x
buanyak<- x[2:5]
print(buanyak)
#c. ambil semua elemen x kecuali elemen ke 4
pengecualian <- x[-(4)]
print(pengecualian)

#4. diketahui vektor
nilai <- c(55,72, 88, 45, 90, 67, 80);nilai
#tuliskan kode R untuk mengambil semua nilai yang lebih besar dari 70
hasil_nilai <- nilai[nilai>70]
print(hasil_nilai)

#5. diketahui vektor
data <- c(12, 15, 20, 25, 30, 35, 40);data
#gunakan fungsi bawaan R untuk menghitung 
#Rata Rata
mean(data)
#jumlah seluruh elemen
sum(data)
#nilai maksimum & minimum dalam data
max(data)
min(data)
