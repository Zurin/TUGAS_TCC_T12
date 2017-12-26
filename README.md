# TUGAS_TCC_TI2

## DOCKER COMPOSE

### Tutorial:
1. Buat file index.php di dalam direktori src yang isinya seperti contoh pada repositori ini 

2. Buat Dockerfile yang isi konfigurasinya adalah sbb: 

```
FROM php:5.6.30-apache
COPY src/ /var/www/html/
EXPOSE 80
```
3. Buat file docker-compose.yml yang isinya adalah sbb:
```
version: '2'
services:
    php:
      build: .
      ports:
        - 80:80
      volumes:
        - ./src:/var/www/html
```
4. Pastikan Anda sudah menginstal docker-compose, jika belum silakan instal melalui tutorial di web official docker: [Install Docker Compose](https://docs.docker.com/compose/install/).
5. Jika mesin kita sudah terinstal docker-compose, maka selanjutnya adalah masuk ke terminal. Untuk mempermudah proses silakan masuk mode root misalnya jika menggunakan linux turunan Debian gunakan command "sudo su" atau jika menggunakan windows bisa masuk mode Administrator Command Propmt.
6. Selanjutnya masuk ke direktori projek/ file-file yang dibutuhkan untuk dijalankan docker-compose dengan perintah
```
cd direktori_kerja/

```
7. Jika sudah masuk direktori kerja tersebut, silakan jalankan perintah:
```
docker-compose build
docker-compose up -d
```
8. Jika perintah di atas sudah berhasil dan tidak ada notifikasi error, maka hasilnya ketika dijalankan di browser adalah sebagai berikut:

![alt Screen Shot](https://raw.githubusercontent.com/Zurin/TUGAS_TCC_T12/master/SS.jpg)

