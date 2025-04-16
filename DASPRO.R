#kita bikin data per kolom sebagai vektor
nama <-c("nalar","yusuf","hasya","nasya")
berat<-c(48,45,17,11)
tahun_lahir<-c(1993,1993,2017,2021)
jenis_kelamin<-c("p","l","p","p")

#membuat data frame
data_keluarga<-data.frame(nama,berat,tahun_lahir,jenis_kelamin)
data_keluarga

#statistika deskriptif
mean(data_keluarga$berat)
median(data_keluarga$tahun_lahir)
summary(data_keluarga)

#mengaksses value dari data frame
#nama_dataframe[baris.kolom]
data_keluarga[1,]#baris 1
data_keluarga[,1]#kolom 1 atau
data_keluarga[,"nama"]#hasilnya sama atau
data_keluarga$nama #hasilnya sama

data_keluarga[-1,]#mengecualikan baris 1
data_baru<-data_keluarga[,-5] #mengecualikan kolom 5, conoth pemilihan variabel

data_keluarga[data_keluarga[,"berat"]<40,]


data_keluarga[1,"berat"]<-43
data_keluarga

#mengubah matriks menjadi data frame
matriks<-matrix(c(1,3,2,5,1,2,2,2,9), ncol=3, byrow=T)
matriks
df_matriks<-as.data.frame(matriks)

#memodifikasi data frame
#1. menambah baris
data_keluarga
pendidikan_terakhir<-c("S1","S2","SD","TK")
data_keluarga<-cbind(data_keluarga,pendidikan_terakhir)

anggota_baru<-c("sinwar",3.1,2025,"l",0,"-")
data_keluarga<-rbind(data_keluarga,anggota_baru)
data_keluarga
#3.mengurutkan berdasarkan berat
data_keluarga[order(as.numeric(data_keluarga$berat)),]
#4. menggabungkan data frame
data_keluarga
meme_favorit<- data.frame(
  nama= c("nalar","yusuf","hasya","nasya","sinwar"),
  meme= c("tol cipularang","ksabar","sebaiknya jangan gegabah","istiqomah","rendang rehan")
)
meme_favorit
gabungan<-merge(data_keluarga,meme_favorit)
gabungan

#bikin vektor
vektor1<-1:10
vektor2<-LETTERS[1:15]
#MATRIKS
matriks
#dataframe
data_keluarga
meme_favorit

#array
array1<-Titanic

#membuat LIST
list1<- list(vek1=vektor1,vek=vektor2,mat1=matriks,df1=data_keluarga,df2=meme_favorit,arr1=array1)

#mengakses list
list1[[2]]
list1[[3]]
list1[["df2"]]
list1$df2
list1$df2[,2]

#misal mau menambahkan df_matriks ke dalam list1
list2<-append(list1, list(df_matriks))
names(list2)[7]<"mat2" #memberi nama elemen baru

#mengubah elemen
list1$df2[1,1]<-"syakira"
list1$df2[1,1]

length(list1)
%in% list1[[4]]$nama
"A" %in% list2[[2]]
1 %in% list2[[7]]$V3
#menggabungkan list
listbaru<-c(list1,list2)

#unlist<-unlist(list1)
unlist<-unlist(list1)
unlist
