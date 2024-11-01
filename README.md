# lodon_mart

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Tugas 1

## Step by Step  membuat program flutter tema e-commerce tugas sebelumnya
1. Membuat direktori baru atau pindah ke suatu direktori yang berbeda dengan direktori proyek web saya sebelumnya.
2. Membuka path direktori tersebut pada CLI komputer / laptop (cmd / powershell, etc.).
3. Membuat projek aplikasi baru dengan framework flutter dengan cara menuliskan 
```
flutter create lodon_mart
cd lodon_mart
```
4. Setelah itu mengetes keberhasilan proyek yang dibuat dengan command :
```
flutter run
```
5. Anda bisa mengecek lewat chrome atau lewat emulator yan telah anda download sebelumnya atau melalui desktop (opsional).

## Step by step membuat halaman Utama
1. Pada bagian direktori lib, tambahkan file bernama menu.dart.
2. Buat class InfoCard yang meng-extend Statelesswidget (class untuk meenampilkan kartu berisi keterangan informasi yang dibutuhkan).
3. inisialisasi variabel final untuk judul card dan content nya.
4. Buat constructor class dengan contoh :
```dart
const InfoCard({super.key, required this.title, required this.content});
```
5. override method build milik stateless Widget dengan parameter class BuildContext yang dugunakan untuk mendapatkan informasi tentang tema, ukuran, dan faktor lainnya yang terkait dengan konteks widget saat ini.
6. Buat method build yang me return class Card yang propertinya antara lain :
- mengatur shadow untuk widget = elevation
- Membuat container untuk widget dengan definiskan class Container di dalam properti = child(tempat anda dapat menyimpan widget) pada class Card yang direturn untuk method build widget.
7. Atur property dari class Container yang merupakan child dari class Card yang propertinya antara lain :
- mengatur lebar device yang digunakan = width
- mengatur jarak dan ukuran di dalam kartu dengan bagian ujung wdiget = padding
- Membuat struktur kolom dengan class Column di dalam properti child(tempat anda mengatur penempatan konten tiap isi widget) pada class Container yang merupakan child dari class Card.
8. Atur properti dari class Column yang merupakan child dari class Container yang propertinya antara lain :
menyimpan daftar widget yang akan ditampilkan dalam urutan tertentu = children.
9. Atur isi dari properti children class Column sebagai list dengan isi seperti di bawah ini :
- Suatu text yang dilakukan dengan pemanggilan class Text yang isinya berisi variabel judul yang sudah di assign di atas dengan atribut style yang diinginkan
- variabel tipe const untuk ukuran box dengan menggunakan class SizedBox yang diatur tingginya dengan properti height.
- Suatu text yang dilakukan dengan pemanggilan class Text yang isinya berisi variabel konten  yang sudah di assign di atas dengan atribut style yang diinginkan
10. Buat class itemHomepage dengan variabel denga tipe final untuk nama (String), untuk ikon (IconData), dan untuk warna (Color).Lalu menambahkan konstruktornya.
11. Terakhir membuat class myHomepage yang meng-extend Stateless widget untuk menampilkan keseluruhan halaman utama aplikasi dengan constructornya.
12. inisialisasikan variiabel untuk nama,npm,dan nama kelas saya dengan tipe final.
13. override method build milik stateless Widget dengan parameter class BuildContext yang dugunakan untuk mendapatkan informasi tentang tema, ukuran, dan faktor lainnya yang terkait dengan konteks widget saat ini.
14. Buatlah method build widget untuk return class Scaffold yang dugunakan untuk menyediakan struktur dasar halaman dengan Appbar dan body yang propertinya antara lain - properti appbar sebagai bagian atas untuk menampilkan judul menggunakan konstruksi class Appbar .
- properti body sebagai bagian body dari halaman aplikasi (isi konten aplikasi) dengan konstruksi class Paddung.
15. Atur isi properti dari appbar antara lain :
- title = menggunakan class Text dengan isi nama toko saya, dengan styling tulisan dengan class textstyle.
- backgroundColor = menggunakan background color yang diinginkan.
16. Atur isi properti dari class  Padding sebagai atribut body dari Scaffold antara lain :
- padding = mengatur jarak isi dengan ujung widget.
- child = tempat anda mengatur penempatan konten tiap isi widget menggunakan class column yang memiliki atribut crossAxisAlignment center dan atribut childrennya.
17. Isi properti Children dari class Column berupa list yang isinya antara lain :
- class Row dengan properti mainAxis Alignment yang diatur space evenly (terbagi rata) dan properti children berupalist dengan 3 instan class InfoCard yang parameter title dan kontennya disesuaikan untuk menampilkan npm, nama, dan kelas pbp. 
- Setting ukuran dengan class SizedBox
- Class center
18. class Center di dalam class column memiliki properti child yang berisi class Column yang propertinya terdiri dari children.
19. Isi dari children class center adalah list dengan beberapa properti dan isi lain antara lain :
- class Padding dengan properti child class paddingnya berupa text tulisan "selamat berbelanja di lodon_mart" dengan properti style kelass paddingnya menggunakan class TextStyle.
20. Setelah itu pindah ke bagian main.dart
21. Tambahkan import package dari flutter material.dart dan import menu.dart yang ada di direktori lib juga.
22. buat fungsi main untuk menjalankan aplikasi :
```dart
void main() {
  runApp(const MyApp());
}
```
23. Buat class MyApp yang meng-extend Stateless Widget.
override method build nya yang akan return tipe class MaterialApp dengan properti sebagai berikut :
- title = judul / nama dari halaman app saat ini.
- theme = tema app 
- home = MyHomePage() (yang diimport dari menu.dart).
24. Isi properti dari Theme dari class MaterialApp antara lain :
- useMaterial3 = Properti ini berfungsi sebagai saklar untuk mengaktifkan penggunaan Material Design 3 (M3) dalam aplikasi menggunakan Flutter 
- colorScheme : menggunaan class ColorScheme yang diatur fromSeed dengan properti seedColor berupa warna yang diinginkan dengan menggunakan class Color dan bertipe const.

## Step by step membuat tiga tombol sederhana dengan ikon dan teks warna-warna yang berbeda untuk setiap tombol:
1. Membuka menu.dart di direktory lib.
2. Buat class ItemCard yang meng-extend StatelessWidget.
buat variabel yang menyimpan tipe data class ItemHomePage bernama item yang modifiernya final.
3. Buat konstruktor class ItemCard dengan parameter calss ItemHomePage, lalu {super.key}.
4. Buat method build yang override dari Stateless widget dengan parameter class BuildContext yang akan me return class Material yang memiliki properti sebagai berikut :
- color = sesuai properti color dari tiap instan ItemHomePage
borderRadius = mengatur kelengkungan widget dengan fungsi circular pada class BorderRadius.
- child = Container untuk menyimpan icon dan text.
5. Isi dari properti child class Material yang berupa class Container antara lain :
- mainAxisAlignment yang di set center
- children yang berupa list berisi class Icon (dengan parameter icon dari instan ItemHomePage, properti color, dan properti size), class Padding untuk mengatur padding dengan atribut paddingnya, dan class Text (dengan properti nama instan ItemHomePage, textAlign,dan styling nya).
6. Fokus pada class MyHomePage pada di dalam method build pada bagian Scaffold (hasil return method build) yang propertinya body yang memiliki child berupa class Column yang memiliki children berupa list yang salah satunya adalah class Center yang memiliki child class Column yang properti childrennya berupa sebuah list.
7. Di dalam list tersebut, tambahkan properti baru pada properti children class Column yaitu Gridview dengan property primary, paddng, crossAxisSpacing,mainAxisSpacinsg,crossAxisCount (jumlah kolom untuk grid), shrinkWrap(adjust size grid sesuai isi konten), dan properti childrennya berupa tipe data List pada class MyHomePage yang berisi objek objek dengan class ItemHomePage yang di map dengan tiap itemnya me-return class ItemCard yang baru kita buat dengan parameter instansiasinya adalah class ItemHomePage kita. Lalu hasil mapping tersebut di konversi menjadi list dengan fungsi ".toList()".

## Step by Step menampilkan Snackbar 
1. Buka menu.dart di direktory lib.
2. Fokus pada class ItemCard di bagian method buildnya.
3. Masukkan properti child class Material yang merupakan hasil return dari class build ke dalam class InkWell (menjadi properti child dari class InkWell).
4. Lalu tambahkan properti onTap() di atas properti child pada class Inkwell dengan isinya :
```dart
onTap: () {
    // Menampilkan pesan SnackBar saat kartu ditekan.
    ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(
        content: Text("Kamu telah menekan tombol ${item.name}!")));
},
```
keterangan :
- ```ScaffoldMessenger.of(context):``` Baris ini mengakses ScaffoldMessenger, yang merupakan mekanisme untuk menampilkan SnackBar, BottomSheet, atau dialog di dalam aplikasi.
- ```dart..showSnackBar(SnackBar(:``` Setelah menyembunyikan SnackBar yang sedang ditampilkan, baris ini menampilkan SnackBar baru.
- ```..hideCurrentSnackBar(): ```Ini adalah metode yang dipanggil untuk menyembunyikan SnackBar saat ini jika ada yang sedang ditampilkan. Operator .. adalah operator cascade yang memungkinkan pemanggilan beberapa metode pada objek yang sama tanpa perlu menuliskan ulang objek tersebut.
- ```content: Text("Kamu telah menekan tombol ${item.name}!")));``` untuk setting properti class SnackBar berupa text dengan menggunakan class Text yang isinya notifikasi bahwa sebuah widget (dianggap button) dengan nama dari instan ItemHomePage yang disimpan di variabel di awal definisi class.
(Dalam program ini nama nama buttonnya : Lihat Daftar Produk, Tambah Produk, dan Logout).

## Stateless and Stateful Widget
Pengantar :
Widget bisa berstatus (Stateful) atau tidak berstatus(Stateless). Jika widget dapat berubah—misalnya saat pengguna berinteraksi dengannya—widget tersebut berstatus.

Stateless Widget (Widget tanpa status) adalah widget yang tidak memiliki state atau kondisi yang dapat berubah setelah widget tersebut dibuat . Icon, IconButton, dan Textmerupakan contoh widget tanpa status.Setelah widget ini dirender, ia tidak akan berubah sepanjang waktu, kecuali jika dipanggil ulang oleh framework Flutter. Subkelas widget tanpa status StatelessWidget. 

Stateful Widget adalah widget yang memiliki state yang bisa berubah-ubah selama siklus hidup widget tersebut.Widget stateful bersifat dinamis (merespon terhadap interaksi pengguna dan perubahan data dengam pembaruan tampilan pada halaman pengguna): misalnya, widget tersebut dapat mengubah tampilannya sebagai respons terhadap peristiwa yang dipicu oleh interaksi pengguna atau saat menerima data. Checkbox, Radio, Slider, InkWell, Form, dan TextFieldmerupakan contoh widget stateful. Subkelas widget stateful StatefulWidget.

Stateless Widget tidak ada perubahan setelah widget di render pada tampilan user dan biasanya digunakan untuk elemen yang statis serta tidak memiliki method setstate() namun lebih sederhana karena tidak ada pembaharuan ulang. Sedangkan stateful widget statenya berubah rubah sepanjang terjadi interaksi pengguna sehingga baik digunakan untuk elemen yang dinamis dan memiliki method setState() namun lebih kompleks karena selalu terjadi re-newing state berkali-kali.

## Widget-Using
Pada program saya, saya hanya menggunakan 3 class turunan StatelessWidget yaitu pada bagian itemcard, Infocard, dan Homepage. ItemCard digunakan untuk menampilkan snackbar setelah dipencet suatu widget tertentu dan ditampilkan pada bagian bawah tampilan. Infocard digunakan untuk menampilkan judul dan isi (nama,kelas,npm untuk program saya). MyHomePage untuk menampilkan keseluruhan halaman aplikasi beserta dengan widget widget itemcard dan infocard di dalamnya.

## setState()
Status widget disimpan dalam suatu objek "State", yang memisahkan status widget dari tampilannya. Status terdiri dari nilai-nilai yang dapat berubah, seperti nilai slider saat ini atau apakah kotak centang dicentang. Saat status widget berubah, objek status memanggil setStat(), yang memberi tahu kerangka kerja untuk menggambar ulang widget.

Fungsi setState merupakan fungsi bawaan milik stateful widget yang ada pada framework flutter digunakan untuk update tampilan pengguna dengan cara memicu rebuild / rendering pada widget tersebut yang menyebabkan terjadinya perubahan value atau konten pada variabel atau kondisi yang ada (state sebelumnya) dan akan terlihat pada antarmuka aplikasi (perubahan hanya pada widget, bukan pada seluruhhalaman aplikasi).

Variabel-variabel yang berubah saat dilakukan setState adalah variabel yang disimpan dalam stat dari widget yang kita buat. Dimulai dari variabel kondisi boolean yang menunjukkan sebagai penanda bahwa terjadi event pada widget yang ada (keterlihatan suatu elemen di UI terlihat atau tidak dengan variabel isVisible / isLoaded), serta variabel yang memuat data yang bersifat dinamis seperti nilai dari counter atau data yang diambil dari API, dan juga satatus dari pilihan di checkbox saat user memilih option tersebut.

intinya fungsi setState() penting digunakan agar terdapat perubahan real time sesuai dengan yang user lakukan pada suatu widget yang bersifat stetful untuk data yang dinamis dan perlu ditampilkan informasinya kepada user.

## Const and Final
penggunaan Final untuk mendifiniskan suatu variabel digunakan untuk menginisialisasi nilai pada suatu variabel dan dapat diinisialisasi saat runtime(aplikasi berjalan) jika data tersebut hanya tersedia pada saat aplikasi berjalan (e.g. tanggal real time menggunakan DateTime.now(), respons dari API). Sedangkan penggunaan Const untuk mendefinisikan suatu variabel yang nilainya sudah diketahui dan ditetapkan saat proses compiling kode (compile-time) jika value untuk variabel tersebut sudah diketahui atau dapat ditetapkan sebelum proses running aplikasi kita (e.g. ukuran,warna tetap[string, angka] ).