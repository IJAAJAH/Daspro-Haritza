#OUTPUT 1
A <- c("A1", "A1", "A2", "A2", "A3", "A3", "A4", "A4") # nolint
Kel <- c(1, 2, 1, 2, 1, 2, 1, 2) # nolint
resp <- c(1.000000, 1.428571, 1.857143, 2.85714, 2.714286, 3.142857, 3.571429, 4.000000)  # nolint

data1 <- data.frame(A,Kel,resp)
data1

#1.Variabel  'baru' nilai dari 8 sampai 1
data1$baru <- 8:1
data1

# 2. Ambil data yang termasuk kelompok 1 saja
kelompok_1 <- subset(data1, Kel == 1)
kelompok_1

# 3. Ambil data yang termasuk kelompok 1 atau A1
kelompok_1_atau_A1 <- subset(data1, Kel == 1 | A == "A1")
kelompok_1_atau_A1

# 4. Urutkan data berdasarkan Kelompok secara ascending
ascending <- data1[order(data1$Kel), ]
ascending

# 5. Urutkan berdasarkan Kelompok dan respon secara descending
descending <- data1[order(-data1$Kel, -data1$resp), ]
descending

# 6. Gabungkan data1 dengan tabel1 berdasarkan peubah pertama (kolom 'A')
tabel1 <- data.frame(
  A = c("A1", "A2", "A3", "A4"),
  info = c("A", "B", "C", "D")
)
gabung <- merge(data1, tabel1, by = "A")
gabung
