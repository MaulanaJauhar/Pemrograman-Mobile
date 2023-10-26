# Belanja

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

### Langkah 1

> Siapkan Project Baru

Buatlah sebuah project baru Flutter dengan nama **_Belanja_** dan susunan folder seperti pada gambar berikut. Penyusunan ini dimaksudkan untuk mengorganisasi kode dan widget yang lebih mudah.

<img src="screenshot/1.png" width="600">

### Langkah 2

> Definisi Route

Buatlah dua buah file dart dengan nama home_page.dart dan item_page.dart pada folder pages. Untuk masing-masing file, deklarasikan class HomePage pada file home_page.dart dan ItemPage pada item_page.dart. Turunkan class dari StatelessWidget

#### home_page.dart

<img src="screenshot/2.png" width="800">

#### item_page.dart

<img src="screenshot/3.png" width="800">

### Langkah 3

> Kode Program Pada Main.dart

Definisi penamaan route. Halaman HomePage didefinisikan sebagai /. Dan halaman ItemPage didefinisikan sebagai /item.

<img src="screenshot/4.png" width="800">

### Langkah 4

> Data Model

Sebelum melakukan perpindahan halaman dari HomePage ke ItemPage, dibutuhkan proses pemodelan data. Membuat sebuah file dengan nama item.dart dan letakkan pada folder models

<img src="screenshot/7.png" width="800">

### Langkah 5

> Kode Program Pada HomePage

Pada halaman HomePage terdapat ListView widget. Sumber data ListView diambil dari model List dari object Item

<img src="screenshot/5.png" width="800">

### Langkah 6

> ListView dan itemBuilder

Untuk menampilkan **_ListView_** pada praktikum ini digunakan **_itemBuilder_**. Data diambil dari definisi model yang telah dibuat sebelumnya. Untuk menunjukkan batas data satu dan berikutnya digunakan widget **_Card_**

<img src="screenshot/5.png" width="800">

### Langkah 7

> Menambahkan aksi pada ListView

Item pada ListView saat ini ketika ditekan masih belum memberikan aksi tertentu. Untuk menambahkan aksi pada ListView dapat digunakan widget InkWell

<img src="screenshot/5_2.png" width="800">

### Tugas Praktikum 2

> Mengubah Kode Program Pada HomePage dan ItemPage

#### HomePage

<img src="screenshot/5_1.png" width="800">

#### ItemPage

<img src="screenshot/6.png" width="800">

### Hasil Akhir

> HomePage

<img src="screenshot/flutter_02.png" width="400">

> Item 1

<img src="screenshot/flutter_03.png" width="400">

> Item 2

<img src="screenshot/flutter_04.png" width="400">

> Item 3

<img src="screenshot/flutter_05.png" width="400">
