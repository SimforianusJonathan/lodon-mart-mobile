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

# TUGAS 2

## Membuat halaman form
1. Buat halaman baru bernama "productentry_form,.dart".
2. Membuat class baru bernama ProductEntryFormPage yang meng-extend stateful widget.
3. Tambahkan constructor dengan isntance imutable dengan key ```const``` dan parameter ```{super.key}``` untuk mewakili parameter dari parent class (Stateful widget) :
```dart
const ProductEntryFormPage({super.key});
```
4. Override method ```createState()``` dari stateful widget dengan return type berupa State khusus milik class ```ProductEntryFormPage``` dan akan dikelola di class baru bernama ```_ProductEntryFormPageState()``` dengan kode sebagai berikut :
```dart 
@override
  State<ProductEntryFormPage> createState() => _ProductEntryFormPageState();
```
5. Buat class ```_ProductEntryFormPageState``` yang meng-extend ```State<ProductFormEntryPage>```.
6. Tambahkan kode untuk membuat form menggunakan:
```dart
final _formKey = GlobalKey<FormState>();
```
```GlobalKey``` digunakan untuk membuat kunci unik yang dapat diakses dari mana saja dalam widget tree, yang memungkinkan kita mengontrol widget dengan lebih spesifik, seperti mengakses atau memvalidasi form dari luar widget itu sendiri.
7. Override method build dari dengan parameter BuildContext yang akan return suatu instans ```Scaffold``` yang memiliki atribut sebagai berikut :
- appbar : Instan class ```Appbar``` yang atribut ```title``` nya diatur dengann nama 'Form Add Product' dengan atribut ```backgorundcolor``` dan ```foregroundcolor```  yang diatur sesuai selera.
- body : Instans class ```Form``` dengan atribut ```key``` menggunakan variabel _formkey yang sudah dibuat di atas.

### Step by Step Memakai minimal tiga elemen input, yaitu name, amount, description dengan validasi tiap input
1. Buka halaman productentry_form.dart dan menambahkan beberapa variabel untuk Product yang ingin dibuat pada class ```_ProductEntryFormPageState``` :
```dart
...
String _product_name = "";
String _description = "";
int _price = 0;
int _amount = 0;
...
```

2. Pada method build class tersebut, di bagian instansiasi ```Form()```, tambahkan atribut child berupa class ```SingleChildScrollView()``` yang memiliki atribut child class ```Column()``` yang juga memiliki atribut children berupa suatu list yang berisi beberapa class untuk menampilkan 4 elemen input (product name, product price, product amount / stock, dan product description).

3. Pada list tersebut berisi beberapa class ```Padding()``` untuk tiap elemen input dengan atribut padding yang dikustomisasi dan atribut childnya berupa class ```TextFormField()``` yang memiliki atribut :
- decoration = objek class ```InputDecoration()``` yang memiliki atribut 
```hintText``` dan ```labelText``` sesuai nama elemen input yang pada bagian tersebut. Terdapat juga atribut border yang dikustomisasi menggunakan class ```OutlineInputBorder()```.
- onChanged = yang digunakan untuk mengubah state sesuai dengan elemen input.
Untuk product name dan product description :
```dart
onChanged: (String? value) { // parameter value berupa string / null
  setState(() { // rebuild widget karena ada perubahan state
    _product_name / _description = value!; // nilai value tidak boleh null
  });
}
```
Untuk product price dan product amount :
```dart
onChanged: (String? value) { // parameter value berupa string / null
  setState(() { // rebuild widget karena ada perubahan state
    _price / _amount  = int.tryParse(value!) ?? 0; // nilai value dikembalikan dalam bentuk integer bila valid dan 0 bila null
    });
}
```
- validator = atribut yang digunakan untuk memvalidasi nilai dari input.
Untuk product name dan product description :
```dart
validator: (String? value) {
  if (value == null || value.isEmpty) { // jika value null
    return "Product Name / Product desc must not empty!";
  } else if (value.length > 50) { // jika karakter lebih darii 50 char (300 char untuk description)
    return "Product Name has maximum 50 characthers / Product description has maximum 300 characthers";
  }
  return null; // jika input valid, retun null
}
```
Untuk product price dan product amount :
```dart
validator: (String? value) {
if (value == null || value.isEmpty) { // jika value nya null
  return "Product Price / amount must not empty!";
}
if (int.tryParse(value) == null) { // jika input bukan integer
  return "Product Price / amount must be integer!";
}
if (int.tryParse(value)! <= 0) { // jika input integer berupa 0 atau bilangan negatif
  return "Product Price / amount must be positive integer!";
}

return null; // jika input valid, retun null
}
```

n.b. untuk bagian onChanged dan validator untuk 4 elemen input berbeda memiliki kode berbeda. Di atas digabung untuk contoh saja karena product name dan product desc. memiliki tipe data string dan product amount dan product price memiliki tipe data integer.

### Step by setp menambahkan tombol save
1. Buka halaman productentry_form.dart dan lihat bagian class ```_ProductEntryFormPageState```.
2. Pada method build class tersebut, di bagian instansiasi ```Form()```, tambahkan atribut child berupa class ```SingleChildScrollView()``` yang memiliki atribut child class ```Column()``` yang juga memiliki atribut children berupa suatu list yang berisi beberapa class untuk menampilkan 4 elemen input (product name, product price, product amount / stock, dan product description).
3.  Pada list tersebut, tambahkan objek baru brupa class ```Align()``` yang dikustomisasi atribut alignmentnya yang memiliki atribut child berupa objek class ```ElevatedButton()```  yang memiliki atribut :
- style = dengan objek class ```ButtonStyle()``` yang memiliki atribut backgorundcolor yang dikustomisasi
- child = objek class ```Text()``` bertuliskan "SAVE" yang diatur atribut style-nya dengan class ```TextStyle()```.

### Step by Step Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah pop-up setelah menekan tombol Save pada halaman formulir tambah item baru
1. Buka halaman productentry_form.dart dan lihat bagian class ```_ProductEntryFormPageState```.
2. Pada method build class tersebut, di bagian instansiasi ```Form()```, tambahkan atribut child berupa class ```SingleChildScrollView()``` yang memiliki atribut child class ```Column()``` yang juga memiliki atribut children berupa suatu list yang berisi beberapa class untuk menampilkan 4 elemen input (product name, product price, product amount / stock, dan product description).
3.  Pada list tersebut, terdapat objek class ```Align()```  yang memiliki atribut child berupa objek class ```ElevatedButton()```.
4. Tambahkan atribut pada elevated button yaitu atribut onPressed dengan validasi input :
```dart
...
onPressed: () {
  if (_formKey.currentState!.validate()) {
  ...
  }
}
...
```
5. Isi bagian if block dengan method ```showDialog()``` dengan atribut context di assign sama dengan objek ```BuildContext``` pada parameter method build yang diover-ride dan tambahkan atribut builder yang menggunakan parameter objek ```BuildContext``` juga dan akan me-return objek class ```AlertDialog()``` yang memiliki atribut sebagai berikut :
- backgroundColor = kustomisasi dan preferensi
- title = objek class ```Text()``` dengan tulisan seperti " form successfully added " yang bisa di-kustomisasi juga stylenya dengan objek class ```TextStyle()```.
- content = objek class ```SingleChildScrollView()``` yang memiliki atribut child class ```Column()``` yang juga memiliki atribut children berupa suatu list yang berisi beberapa class untuk menampilkan 4 elemen input beserta keterangannya (product name, product price, product amount / stock, dan product description).
- actions = berupa list yang berisi objek class ```TextButton()``` yang memiliki atribut child yang berupa objek class ```Text()``` dengan tulisan "OK" dan atribut onPressed sebagai berikut :
```dart
onPressed: () {
  Navigator.pop(context); // menutup halaman widget pop-up saat ini kembali ke halaman form
  _formKey.currentState!.reset(); // reset semua input form 
},
```
6. List dari children class  ```Column()```  tersebut memiliki format :
```dart
...
const Text(
  'Product Name:', // bisa untuk product description , price, dan amount
  style: TextStyle(
    color: Colors
        .white70, // Lighter white for labels
    fontSize: 16,
    fontWeight: FontWeight
        .w600, // Semi-bold for labels
  ),
),
Text(
  /*
  dapat diganti dengan :
  '$_price' = product price
  '$_amount' = product amount
  _description = product description
  */
  _product_name,
  style: const TextStyle(
    color: Colors
        .white, // White for product details
    fontSize: 16,
    fontWeight: FontWeight.normal,
  ),
),
const SizedBox(
    height: 8), // Space between sections

  ...
```

n.b. untuk bagian variabel ```const``` class ```Text()```  untuk 4 elemen input berbeda memiliki kode berbeda. Di atas hanya diberikan hanya untuk satu elemen input untuk contoh saja karena product name,product desc., product amount, dan product price memiliki format untuk menampilkan data yang sama.


## Step by Step mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol Tambah Item pada halaman utama
1. Buka halaman menu.dart dan import halaman ```productentry_form.dart``` dengan contoh :
```dart
import 'package:lodon_mart/productentry_form.dart';
```
2. Pada bagian class ```ItemCard``` yang method build override-nya me return class ```Material``` yang memiliki atribut child berupa class ```Inkwell``` yang juga memiliki atribut ```onTap()```, tambahkan  :
```dart
...
// Navigate ke route yang sesuai (tergantung jenis tombol)
if (item.name == "Add Product") {
  Navigator.push(
    context,
    MaterialPageRoute(
        builder: (context) => const ProductEntryFormPage()),
  );
}
...
```

## Step by step membuat sebuah drawer pada aplikasi 
1. Membuat file baru bernama left_drawer.dart
2. import material.dart, halaman menu aplikasi (e.g. menu.dart), dan halaman form product (e.g. productentry_form.dart).
3. Membuat class baru bernama ```LeftDrawer``` yang meng-extend StatelessWidget beserta dengan constructornya yang mengambil key dari parent class.
4. Membuka halaman productentry_form.dart dan import file left_drawer.dart.
5. Pada bagian class ```_ProductEntryFormPageState``` di bagian method build yang meng-return objek class ```Scaffold()```, tambahkan atribut drawer yang valuenya objek class ```LeftDrawer()``` yang kita buat pada halaman file left_drawer.dart.

###  Step by step implementasi drawer minimal memiliki dua buah opsi, yaitu Halaman Utama dan Tambah Item.
1. Melakukan over-ride method build dari class ```StatelessWidget``` yang akan return objek class ```Drawer()``` yang memiliki atribut child ```ListView()``` yang juga memiliki atribut Children yang berupa sebuah list yang berisi :
- objek class ```DrawHeader()``` untuk membuat header dari aplikasi
- 2 objek class ListTile untuk drawer di halaman utama dan untuk dibagian halaman form.
2. Objek class ```DrawHeader()``` dengan atribut :
- decoration yang berupa objek class ```BoxDecoration()``` yang bisa diatur atribut colornya.
- child yang berupa objek class ```Column()``` yang memiliki atribut children berupa list juga yang beirisi 2 Objek class ```Text()``` yang diatur alignment nya dan stylenya dengan class ```TextAllign``` dan ```TextStyle()``` untuk menampilkan nama aplikasi "Lodon Mart" dan juga tagline toko "Shop in Mart, Don't worry.. It doesn't contain lard".

### Step by step re-routing brawer ke halaman utama
1. Buka halaman left_header.dart.
2. Perhatikan over-ride method build dari class ```StatelessWidget``` yang akan return objek class ```Drawer()``` yang memiliki atribut child ```ListView()``` yang juga memiliki atribut Children yang berupa sebuah list.
3. Pada list Children tersebut, tambahkan objek class ```ListTile()``` yang memiliki atribut :
- leading = menampilkan ikon "home-outline" bawaan dari class ```Icon```.
- title = menggunakan objek class ```Text()``` yang bertuliskan "Home Page".
- onTap() = Untuk melakukan re-routing ke halaman utama saat widget bertuliskan "Home Page" ditekan dengan contoh kode sebagai berikut :
```dart
...
onTap: () {
  // // navigasi ke halaman baru dan menmbuang halaman saat ini dari "navigation stack"
  Navigator.pushReplacement( 
     // untuk mengetahui di posisi widget tree mana sekarang pada "navigation stack"
    context,
    // fungsi builder untuk membuat widget MyHomePage harus dibuat saat re-routing ssebagai destinasi di layar
    MaterialPageRoute(
      builder: (context) => MyHomePage(),
    ));
}
...
```

### Step by step re-routing brawer ke halaman utama
1. Buka halaman left_header.dart.
2. Perhatikan over-ride method build dari class ```StatelessWidget``` yang akan return objek class ```Drawer()``` yang memiliki atribut child ```ListView()``` yang juga memiliki atribut Children yang berupa sebuah list.
3. Pada list Children tersebut, tambahkan objek class ```ListTile()``` yang memiliki atribut :
- leading = menampilkan ikon "add" bawaan dari class ```Icon```.
- title = menggunakan objek class ```Text()``` yang bertuliskan "Add Product".
- onTap() = Untuk melakukan re-routing ke halaman utama saat widget bertuliskan "Add Product" ditekan dengan contoh kode sebagai berikut :
```dart
...
onTap: () {
  // // navigasi ke halaman baru tanpa menmbuang halaman saat ini dari "navigation stack" dan menambahkan rute baru ke Top of "navigation stack"
  Navigator.push( 
     // untuk mengetahui di posisi widget tree mana sekarang pada "navigation stack"
    context,
    // fungsi builder untuk membuat widget ProductEntryFormPage harus dibuat saat re-routing sebagai destinasi di layar
    MaterialPageRoute(
      builder: (context) => ProductEntryFormPage(),
    ));
}
...
```

## Const pada Flutter
Key "const" pada flutter dapat digunakan untuk membuat objek yang bersifat konstan (immutable) saat program di-compile. key "const" sering digunakan pada widget dan nilai yang tidak akan berubah pada saat aplikasi berjalan. Contohnya seperti : objek class ```Text()``` pada aplikasi untuk menampilkan nama dari aplikasi maupun nama nama widget yang berfungsi sebaga button untuk re-routing ke halaman lain pada navigation stack, dan lainnya. Dalam hal ini objek class ```Text()``` yang memiliki nilai teretntu dan styling yang telah dibuat ditandai sebagai kosntanta.

Keuntungan menggunakan key ```const``` :
- Penegasan sifat immutable sehingga tidak terjadi kesalahan saat program dijalankan yang memungkinkan perubahan nilai pada variabel tertentu yang sudah diberi key ```const```.
- Optimasi Mem&CompTime lewat penyimpanan sekali saja dalam memori sehingga program aplikasi dapat dikompilasi dengan lebih efisien.
- Optimasi RunTime sehingga tidak perlu melakukan re-rendering / re-build pada widget yang kita buat saat tampilan pengguna diperbarui yang juga dapat menghemat run-time.

Waktu yang tepat :
- Melakukann assignment terhadap suatu nilai pada widget yang nilainya tetap / tidak berubah elama aplikasi berjalan dan paling penting sudah diketahui sebelum aplikasi berjalan (e.g. ikon, background / font color jika tidak ada dark/light mode, teks).
- Membuat tampilan pengguna dengan komponen yang sama berulang kali sehingga dapat menghemat memori.

Waktu tidak tepat :
- Jika ada perubahan state yang mempengaruhi nilai pada variabel di widget yang kita buat (Widget yang meng-extend StatefulWidget yang mengimplementasikan method setState() pada kondisi tertentu). Sebaiknya menggunakan key ```final```.
- Jika informasi / data yang didapat pada saat aplikasi berjalan (input dari user maupun data dari API) yang berarti belum diketahui saat proses kompilasi.

##  Column dan Row pada Flutter
Column dan Row merupakan widget widget tipe layout / bersifat mengatur tata letak dari widget widget di dalamnya. Masing-masing memiliki kegunaannya sendiri.

### Column 
Widget yang digunakan untuk membuat layout yang bersifat vertikal (atas ke bawah) yang berbentuk seperti suatu kolom. Biasanya digunakan untuk membuat formulir atau list dari suatu item. Untuk atribut / properti nya juga memiliki fungsi tersendiri. Seperti :
- ```mainAxisAlignment``` = mengatur agar tata letaknya berada di tengah tengah dari sumbu y / vertikal (mid dari high & low).
- ```crossAxisAlignment``` = mengatur agar tata letaknya berada di tengah tengah dari sumbu x / horizontal (mid dari left & right).
- ```mainAxisSize``` = mengatur agar mengambil "minimum space" pada halaman aplikasi untuk memenuhi sumbu utama.

implementasi pada program saya :
```dart
...
child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    const Text(
      'Product Name:',
      style: TextStyle(
        color: Colors
            .white70, // Lighter white for labels
        fontSize: 16,
        fontWeight: FontWeight
            .w600, // Semi-bold for labels
      ),
    ),
    Text(
      _product_name,
      style: const TextStyle(
        color: Colors
            .white, // White for product details
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
    ),
```
Untuk menampilkan keterangan "product name" dan kontennya di bagian bawah keterangan (secara vertikal) emnggunakan class ```Column```.

### Row 
Widget yang digunakan untuk membuat layout yang bersifat horizontal (kiri ke kanan) yang berbentuk seperti suatu baris. Biasanya digunakan untuk membuat suatu informasi berderet seperti widget untuk navigation bar, menampilkan ikon/ button dalam satu baris, dan lainnya. Untuk atribut / properti nya juga memiliki fungsi tersendiri. Seperti :
- ```mainAxisAlignment``` = mengatur agar tata letaknya berada di tengah tengah dari sumbu x / horizontal (mid dari left & right).
- ```crossAxisAlignment``` = mengatur agar tata letaknya berada di tengah tengah dari sumbu y / vertikal (mid dari high & low).
- ```mainAxisSize``` = mengatur agar mengambil "minimum space" pada halaman aplikasi untuk memenuhi sumbu utama.

implementasi pada program saya :
```dart
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    InfoCard(title: 'NPM', content: npm),
    InfoCard(title: 'Name', content: name),
    InfoCard(title: 'Class', content: className),
  ],
),
```
Untuk menampilkan infocard developer dari aplikasi dalam satu baris terdiri dari 3 card.

## Eleman Input Flutter
Pada program lodon mart, saya menggunakan hanya sedikit elemen input flutter untuk meminta data dari user. Elemen input yang digunakan antara lain :
- TextFormField = untuk setiap field pada form (name, price, amount, description), diterima lewat TextFormField serta telah dilakukan validasi untuk panjang maksimum input untuk tipe data String serta nominal minimum untuk tipe data integer.
- Elevated Button = digunakan untuk menyimpan data yang ada di bagian bawah semua field untuk input yang jika di tap akan menyimpan produk beserta dengan informasi yang ditampilkan secara pop up .

Elemen input yang belum digunakan pada program lodon mart ini :
- Switch = memberikan opsi on/off maupun aktif/non-aktif pada tipe input yang diberikan.
- DropdownButtonFormField = memberikan opsi yang terbatas dalam bentuk drpdown (e.g. untuk kategori yang terbatas, atau stock yang masih tersedia).
- RadioListTile / Radio = memberikan pilihan tunggal dari beberapa opsi yang diberikan dalam bentuk radio type input (e.g. bisa untuk kategori terbatas juga, opsi status sudah / belum, jenis kelamin, dan lainnya).
- DatePicker = memebrikan opsi memilih tanggal bawaan dari flutter.
- CheckboxListTile / CheckBox = memberikan pilihan Y/N berupa boolean.
- Slider = memberikan input numerik dengan range biasanya untuk suatu tipe data elemen input yang memiliki range secara numerik.

## Tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten
Sampai sekarang, tema yang telah saya berikan kepada aplikasi lodon mart ini baru berdasar lewat tema warna dari aplikasi.
Berikut cuplikan pada bagian file ```main.dart``` :
```dart
...
colorScheme: ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 16, 23, 40),
).copyWith(
  primary: const Color.fromARGB(255, 16, 23, 40),
  // secondary: const Color.fromARGB(255, 22, 32, 55),
  secondary: const Color.fromARGB(255, 25, 37, 65),
)),
...
```
Saya melakukan implementasi pemberian tema pada aplikasi lodon mart dengan memberikan atribut colorScheme pada class ```myApp()``` di file ```main.dart``` dengan kustomisasi warna untuk primary dan secondary yang saya terapkan pada berbagai widget yang ada di aplikasi saya seperti :

class ```ItemCard``` pada file ```menu.dart``` untuk memberikan warna widget dengan secondary (background dari item infocard):
```dart
...
Widget build(BuildContext context) {
  return Material(
    // Menentukan warna latar belakang dari tema aplikasi.
    color: Theme.of(context).colorScheme.secondary,
  ...)
  ...}
```

class ```MyHomePage()``` pada file ```menu.dart```  untuk memberikan warna widget dengan primary (background tulisan aplikasi) :
```dart
...
appBar: AppBar(
  // Judul aplikasi "LODON MART" dengan teks putih dan tebal.
  title: const Text(
    'LODON MART',
    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
  ),
  // Warna latar belakang AppBar diambil dari skema warna tema aplikasi.
  backgroundColor: Theme.of(context).colorScheme.primary,
  iconTheme: const IconThemeData(color: Colors.white),
),
...
```

class ```LeftDrawer()``` pada file ```left_drawer.dart``` untuk memberikan warna widget dengan primary (background drawer) :
```dart
```dart
...
DrawerHeader(
decoration: BoxDecoration(
    color: Theme.of(context).colorScheme.primary,
  ),
...)
```

class ```_ProductEntryFormPageState``` pda file ```productentry_form.dart``` untuk memberikan warna widget dengan primary dan secondary (pop up dan tombol save) :
```dart
Align(
  alignment: Alignment.bottomCenter,
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
            Theme.of(context).colorScheme.secondary),
      ),
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                backgroundColor: Theme.of(context)
                    .colorScheme
                    .secondary, ...)
                  ...}
                ...)
              ...}
            ...}
           ...)
         ...)
        ...)
```

Dengan mengaplikasikan berbagai background warna dari properti colorScheme (tema aplikasi sementara saat ini) yang ada pada file ```main.dart``` untuk beberapa widget yang ada di aplikasi saya di berbagai file, membantu saya untuk tetap menjaga konsistensi dari tema yang diimplementasikan pada aplikasi lodon mart. Jika ada tambahan tema baik warna maupun animasi pada tiap widget yang akan terjadi bila dilakukan suatu trigger, akan saya terapkan juga pada beberapa wiidget yang bersambungan dan jika perlu pada seluruh widget dengan fungsionalitas sama di aplikasi saya untuk tetap menjaga konsistensi dari aplikasi saya.

## Menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter
Navigator dalam Flutter memiliki beberapa metode penting, termasuk Navigator.push, Navigator.pop, dan Navigator.pushReplacement, yang sering digunakan dalam tugas atau tutorial.

Navigator.push() berfungsi menambahkan route baru ke dalam stack yang dikelola oleh Navigator. Metode ini digunakan ketika ingin membuka halaman baru dan menambahkannya di puncak stack, memungkinkan pengguna untuk menekan tombol kembali guna kembali ke halaman sebelumnya.

Navigator.pop() berfungsi untuk menghapus route yang sedang ditampilkan, mengembalikan pengguna ke halaman di bawahnya dalam stack (biasanya halaman sebelumnya).

Navigator.pushReplacement() mengganti route saat ini dengan route baru tanpa menambahkannya ke dalam stack, sehingga pengguna tidak bisa kembali ke halaman sebelumnya. Metode ini menghapus route yang sedang ditampilkan dan langsung menggantinya dengan halaman baru yang telah ditentukan.

# TUGAS 3

## Step by step memastikan deployment tugas django berjalan dengan baik
1. Cek di localhsost apakah proyek django masih berjalan dengan baik sampai di tugas terakhir untuk proyek web.
2. Memastikan di link pws bahwa proyek django masih berjalan dengan baik sampai di tugas terakhir untuk proyek web.
3. pada root direktori aplikasi dart lakukan command :
```
flutter pub add provider
flutter pub add pbp_django_auth
```
4. membuat aplikasi baru
```
django-admin startapp authentication
```
5. pada proyek django, tambahkan ```corsheaders``` dan ```authentication``` di bagian installed apps dan ```corsheaders.middleware.CorsMiddleware``` pada bagian middleware dan juga :
```
...
CORS_ALLOW_ALL_ORIGINS = True
CORS_ALLOW_CREDENTIALS = True
CSRF_COOKIE_SECURE = True
SESSION_COOKIE_SECURE = True
CSRF_COOKIE_SAMESITE = 'None'
SESSION_COOKIE_SAMESITE = 'None'
...
```
di file settings.py direktori lodon_mart (bukan root).

## Step by step Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter

### Step by step implementasi fitur registrasi akun 
1. Buatlah file ```registration.dart``` pada subdirektori ```screens``` di direktori ````lib``` untuk halaman registrasi.
2. Membuat class ```RegisterPage``` yang mengextend Stateful Widget yang mengoverride method ```createState()``` yang akan return state baru untuk class tersebut dan membuat instance dari ```_RegisterPageState```.
3. Membuat class ```_RegisterPageState```yang meng-extend ```State<RegisterPage>```.
4. Menyimpan 3 variabel untuk username, password, dan password kedua dengan tipe ```final``` (autentikasi) meggunakan class ```TextEdittingController()```
5. Pada method build yang di override, simpan variabel request dengan tipe ```final``` yang berisi hasil dari pemanggilan method watch untuk tipe data CookieRequest oleh objek ```BuildContext``` dari parameter method build yang akan return objek class ```Scaffold``` yang memiliki properti app bar dan body.
6. Buatlah bagian header dengan tulisan Register dan arrow back yang akan mentriger Navigation stack untuk melakukan method pop dengan parameter objek ```BuilderContext``` dari parameter method build = appbar Scaffold.
7. Bagian body dari scaffold merupakan class ```Center``` dengan child ```SingleChildScrollView``` dengan child ```Card``` dengan child ```Padding``` dengan child ```Column``` dengan list of Children denga tipe data Widget yang berisi class ```text``` bertuliskan kata registrasi serta class ```TextFormField``` untuk variabel username, password, dan password kedua pada bagian properti controller-nya. Lalu pada properti decorationnya, tambahkan class ```Input Decoration``` yang bisa diatur properti labelText dan hintText nya. Serta tambahkan atribut validator untuk mengecek apakah masih kosong atau tidak fieldnya.
8. Terakhir tambahkan class ```Elevated Button``` untuk melakukan registrasi dengan menambahkan atribut onPressed secara asinkronusuntuk menghandle method post data input user ke database dalam format json.
9. Simpan hasil response dengan method postJson dan dilakukan encoding:
```dart
final response = await request.postJson(
  "http://[APP_URL_KAMU]/auth/register/",
  jsonEncode({
    "username": username,
    "password1": password1,
    "password2": password2,
  }));
```
10. Jika BuildContext dari widget tree mounted dan respons dari method di views.py nya sukses, akan muncul snackbar keterangan berhasil dan Navigation stack akan push kembali ke state halaman login page.
11. Buka proyek django di subdirektori authentication di file views.py :
```python
from django.contrib.auth.models import User
import json
...

@csrf_exempt
def register(request):
    if request.method == 'POST':
        data = json.loads(request.body)
        username = data['username']
        password1 = data['password1']
        password2 = data['password2']

        # Check if the passwords match
        if password1 != password2:
            return JsonResponse({
                "status": False,
                "message": "Passwords do not match."
            }, status=400)
        
        # Check if the username is already taken
        if User.objects.filter(username=username).exists():
            return JsonResponse({
                "status": False,
                "message": "Username already exists."
            }, status=400)
        
        # Create the new user
        user = User.objects.create_user(username=username, password=password1)
        user.save()
        
        return JsonResponse({
            "username": user.username,
            "status": 'success',
            "message": "User created successfully!"
        }, status=200)
    
    else:
        return JsonResponse({
            "status": False,
            "message": "Invalid request method."
        }, status=400)
```
12. pada bagian routing urls.py subdirektori aplikasi authentication :
```python
from authentication.views import register 
...
path('register/', register, name='register'),
```

### Step by step Membuat halaman login pada proyek tugas Flutter
1. Membuka ```main.dart``` pada direktori lib.
2. Mengubah konten main.dart menjadi :

```dart
import 'package:flutter/material.dart';
import 'package:lodon_mart/screens/login.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Lodon Mart',
        theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 16, 23, 40),
            ).copyWith(
              primary: const Color.fromARGB(255, 16, 23, 40),
              // secondary: const Color.fromARGB(255, 22, 32, 55),
              secondary: const Color.fromARGB(255, 25, 37, 65),
            )),
        home: const LoginPage(),
      ),
    );
  }
}
```
Hal ini akan membuat objek Provider baru yang akan membagikan instance CookieRequest dengan semua komponen yang ada di aplikasi.
3. Buat file login.dart pada subdirektori screens.
4. tambahkan :
```dart
void main() {
  runApp(const LoginApp());
}
```
lakukan untuk menjalankan fungsi main sebagai titik awal eksekusi program dart pada class ```LoginApp```
5. class ```LoginApp``` dibuat dengan meng-extend StatelessWidget yang meng-override method build yang akan return class ```MaterialApp``` dengan judul login dan tema aplikasi dengan ```colorScheme``` untuk halaman tersebut kustomisasi dengan properti home = class ```LoginPage```
6. Tahapan selanjutnya mirip dengan pembuatan class ```RegisterPage``` dan ```_RegisterPageState``` untuk membuat class ```LoginPage``` dan ```_LoginPageState``` namun yang diperlukan hanyalah username dan password (kalau registrasi diperlukan 2 variabel menyimpan password untuk verifikasi).
7. Terdapat perbedaan handling pada class ```Elevated Button``` yang respon yang disimpan menunggu hasil dari method login di dari request.
Jika berhasil logged in, akan dismpan pesan keberhasilan dan username yang login di suatu variabel. Jika BuildContext mounted, navigation stack akan push dan replace halaman / widget saat ini dengan widget / halaman homepage (main menu) (redirecting namun di replace bukan ditumpuk dalam stack) dan akan show snack bar sukses, jika tidak sukses akan show snack bar gagal. 
8. Buka proyek django direktori aplikasi ```authentication``` d bagian views.py dan tambahkan :
```python
from django.contrib.auth import authenticate, login as auth_login
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt

@csrf_exempt
def login(request):
    username = request.POST['username']
    password = request.POST['password']
    user = authenticate(username=username, password=password)
    if user is not None:
        if user.is_active:
            auth_login(request, user)
            # Status login sukses.
            return JsonResponse({
                "username": user.username,
                "status": True,
                "message": "Login sukses!"
                # Tambahkan data lainnya jika ingin mengirim data ke Flutter.
            }, status=200)
        else:
            return JsonResponse({
                "status": False,
                "message": "Login gagal, akun dinonaktifkan."
            }, status=401)

    else:
        return JsonResponse({
            "status": False,
            "message": "Login gagal, periksa kembali email atau kata sandi."
        }, status=401)
```
9. Atur routing di urls.py direktori authentication :
```python
from django.urls import path
from authentication.views import login

app_name = 'authentication'

urlpatterns = [
  ...
  path('login/', login, name='login'),
  ...
]
```

## Step by step pembuatan model untuk proyek aplikasi flutter

1. Aktifkan proyek django anda di localhost.
2. Buat data product dummies.
3. Gunakan directory link json untuk menampilkan data model yang telah dibuat dan copy data format json tersebut (salah satu data saja).
4. Buka quickctype (website).
5. Set up nama menjadi "Product" source type "json" dan language "dart".
6. Paste data json pada textbox quicktype.
7. Quick type ini akan membantu kita dalam membuat suatu model pada bahasa yang kita inginkan (kita memilih dart untuk program flutter) agar dapat membuat model objek berdasarkan source type yang diinginkan (untuk memudahkan, menggunakan format json).
8. Jika kita suuda dapat, copy kode dart yang sudah jadi.
9. Membuat subdirektori bernama models dan buat file baru bernama product.dart.
10. Paste kode dart dari quicktype dan model produk sudah jadi.

## STep by step Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON

1. Membuka direktori root proyek mobile lodon mart di terminal dan masukkan command ```flutter pub add http``` untuk mebambahkan pacakage ```http```
2. Pada file ```android/app/src/main/AndroidManifest.xml``` tambahkan :
```dart
<uses-permission android:name="android.permission.INTERNET" />
```
untuk mengizinkan akses internet ke apkikasi flutter kita.
3. Membuat halman untuk menampilkan seluruh list produk yang di buat pada subdirektori screens di direktori lib bernama ```list_products.dart```.
4. import beberapa file yang penting :
```dart
import 'package:flutter/material.dart';
import 'package:lodon_mart/widgets/left_drawer.dart';
import 'package:lodon_mart/models/product_entry.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
```
5. Membuat class ```ProductEntryPage``` yang mengextend Stateful Widget yang mengoverride method ```createState()``` yang akan return state baru untuk class tersebut dan membuat instance dari ```_ProductEntryPageState```.
6. Membuat class ```_ProductEntryPageState```yang meng-extend ```State<ProductEntryPage>```.
7. Buatlah method bernama fetchProduct dengan parameter berupa objek ```CookieRequest``` yang akan dihandle secara asinkronus.
8. Pertama simpan respons dari method get dari reuqest user pada url apikasi dendan endpoint ```/json/```.
9. Buatlah List dengan tipe data Product.
10. Iterasi tiap data json dari respons yang didapat lalu ditambahkan ke list jika bukan null.
11. return list tersebut.
12. Pada method build yang di override, simpan variabel request dengan tipe ```final``` yang berisi hasil dari pemanggilan method watch untuk tipe data CookieRequest oleh objek ```BuildContext``` dari parameter method build yang akan return objek class ```Scaffold``` yang memiliki properti app bar ,drawer, dan body.
13. Isi app bar dengan text "List Products", drawer dengan class ```Leftdrawer``` yang telah dibuat di ```left_drawer.dart``` di subdirektori ```screens```, dan bagian body berupa objek class ```FutureBuilder```.
14. Penjelasan :
```dart
body: FutureBuilder(
  future: fetchMood(request),  // future: operasi asinkron
  builder: (context, AsyncSnapshot snapshot) {  // builder untuk membangun UI berdasarkan status Future
```

```future```: Ini adalah operasi asinkron yang akan dijalankan, dalam hal ini ```fetchProduct(request)``` yang kemungkinan besar mengembalikan Future (seperti mengambil data produk).

```builder```: Fungsi yang menerima dua parameter, ```context``` dan ```snapshot```, untuk membangun tampilan pengguna berdasarkan status dari ```Future```.

```AsyncSnapshot``` adalah objek yang digunakan untuk memantau status dari operasi asinkron. Untuk``` snapshot.data``` digunakna untuk data yang diterima jika operasi berhasil.

15. Jika isinya kosong, maka akan muncul keterangan pada suatu objek ```Column``` bertuliskan "There's no product on Lodon Mart".

16. Jika ada Akan di return suatu objek class ```ListView.builder``` dengan properti ```itemCount``` sebanyak panjang data snapshot.data dan properti ```itemBuilder``` nya berupa suatu objek class ```Container``` untuk menampilkan data dari field tiap objek produk yang dibuat (nama, amount / price, dan descpription product).

17. Buka file ```left_drawer.dart``` pada subdirektori widgets dan tambahkan opsi berupa objek class ```ListTile``` untuk melihat list of products yang telah dibuat dan jika dipencet maka navigation stack akan memasukkan konteks widget baru yang didefiniskan rutenya oleh ```MaterialPageRoute``` menggunakan fungsi builder dengan parameter konteks yang akan menampilkan widget / class ```ProductEntryPage``` yang sudah kita buat di atas.

18. Pada file ```product_card.dart``` di subdirektori widgets, pada bagian properti ```onTap``` tambahkan kondisi bahwa jika widget yang dipencet memiliki tulisan "List of Product" maka navigation stack akan memasukkan konteks widget baru yang didefiniskan rutenya oleh ```MaterialPageRoute``` menggunakan fungsi builder dengan parameter konteks yang akan menampilkan widget / class ```ProductEntryPage``` yang sudah kita buat di atas. 

## Step by step Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.

1. Buka halaman list_products.dart di subdirektori screens.
2. tambahkan kode berikut pada bagian kode yang return ```Listview.builder``` yang akan push konteks widget baru ke dalam navigation stack :
```dart
itemBuilder: (_, index) =>  GestureDetector(
  onTap: () {
    // Navigasi ke halaman detail produk dengan mengirimkan data produk
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetailPage(product: snapshot.data![index]),
      ),
    );
  },
  child : Container(
    ...))
```
3. Membuat file baru di subdirektori screens juga berana ```product_details.dart```.
4. Membuat class ```ProductDetailPage``` yang mengextend Stateful Widget yang mengoverride method ```createState()``` yang akan return state baru untuk class tersebut dan membuat instance dari ```_ProductDetailPageState```.
5. Membuat class ```_ProductDetailPageState```yang meng-extend ```State<ProductDetailPage>```.
6. Pada method build yang override, return objek ```Scaffold``` dengan properti appbar (otomatis menampilkan ikon arrow back ke widget di dalan stack navigation sebelum widget saat ini dimuat jika buka parent widget) yang berisi teks tulisan "Product Details" dan di bagian properti body membuat class ```Column``` yang berisi beberapa class ```SizedBox``` untuk menampilkan tiap field dari data objek produk saat ini di halaman tersebut.

## STep by step Melakukan filter pada halaman daftar item dengan hanya menampilkan item yang terasosiasi dengan pengguna yang login.

1. Hal ini sudah di handle pada proyek django di mana terdapat fungsi show_json karena otomatis sudah mmemfilter produk yang dimiliki oleh user
```python
def show_json(request):
    products =  Product.objects.filter(user=request.user)
    return HttpResponse(serializers.serialize("json", products), content_type="application/json")
```
2. Namun perlu dipastikan juga bahwa pada method create pada flutter, produk juga diasosiasi dengan user yang bersangkutan.
3. pada views.py direktori aplikasi main di proyek django, tambahkan :
```python
...
from django.http import JsonResponse
import json

@csrf_exempt
def create_product_flutter(request):
    if request.method == 'POST':

        data = json.loads(request.body)
        new_product = Product.objects.create(
            user=request.user, # menghubungkan objek model produk yang dibuat dengan user yang melakukanrequest untuk pembuatan objek
            name=data["name"],
            price=int(data["price"]),
            description=data["description"]
        )

        new_product.save()

        return JsonResponse({"status": "success"}, status=200)
    else:
        return JsonResponse({"status": "error"}, status=401)
...
```
4. pada urls.py aplikasi main, tambahkan routing untuk method yang baru dibuat di views.py :
```python
[
  ...
path('create-flutter/', create_product_flutter, name='create_mood_flutter'),
...
]
```
5. Pada proyek flutter di halaman``` product_entryform.dart``` tambahkan :
```dart
final request = context.watch<CookieRequest>();
```
Hubungkan halaman productentry_form.dart dengan CookieRequest

6. Pada properti onpressed(), ubah menjadi asinkronus dan simpan variabel response dengan tipe ```final``` yang didapat dari method ```postJson``` milik request yang bertipe ```CookieRequest``` dengan parameter url aplikasi kita dan data berupa data format json yang di encoding menjadi dictionary String untuk key dan valuenya berisi field field dari objek produk.

7. Jika widget masih berapa dai dalam widget tree dan respons status nya adalah sukses (hasil yang diberikan sebagai return method di fungsi views.py django), akan menampilkan snackbar berhasil dan akan melakukan ```showDialog()``` berisi informasi mengenai keterangan field dan konten field yang abru sajja dibuat. Serta dibuat class ```textButton``` bertuliskan "ok" yang jika dipencet maka akan dilakukan push replacement pada navigation stack untuk mengganti dengan widget baru yaitu class ```MyHomePage()``` (redirecting ke halaman utama).

## Membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
Manfaat :
- Struktur data JSON yang dikirim atau diterima akan memiliki format yang konsisten sesuai dengan model yang telah ditentukan. Konsistensi ini bermanfaat untuk mencegah terjadinya kesalahan dalam pemrosesan data.
- Dengan menggunakan model, Anda dapat menetapkan aturan validasi untuk memastikan bahwa data yang dimasukkan sesuai dengan tipe atau format yang diharapkan, seperti panjang string, tipe integer, dan lainnya(Baik untuk data user maupun model objek yang dikustomiasasi oleh para pengembang).
- Model mempermudah pemetaan antara data JSON dan objek dalam aplikasi Anda, sehingga kode menjadi lebih bersih dan mudah dibaca.

Meskipun tidak selalu terjadi kesalahan jika model tidak digunakan, terdapat beberapa risiko yang dapat muncul:
- Ketidaksesuaian Struktur Data: Jika struktur data JSON tidak sesuai dengan yang diharapkan oleh server atau klien, hal ini dapat menyebabkan kesalahan saat proses parsing atau serialisasi.
- Data Tidak Valid: Tanpa model, tidak ada mekanisme bawaan untuk memverifikasi validitas format data atau memastikan keberadaan atribut penting, sehingga data yang tidak valid dapat terlewatkan.
- Kompleksitas Kode: Menggunakan data JSON mentah tanpa model dapat menyebabkan kode menjadi lebih sulit dipahami, terutama jika terdapat perubahan pada API atau struktur data.
- Kesalahan Logika: Tanpa model, pengembang perlu melakukan lebih banyak pengecekan manual di berbagai bagian kode, yang meningkatkan risiko munculnya bug dan kesalahan logika.

## Fungsi dari library http yang sudah kamu implementasikan pada tugas ini
Pada aplikasi dengan framework flutter ini, library ```http``` sehingga aplikasi mobile bisa mengirim request dan menerima respon seperti yang dilakukan pada aplikasi web :
- Dapat melakukan pengiriman request berupa (post, get, put, delete,  patch) kepada server
- Mendapatkan repsons dalam bentuk format data JSON atau format lainnya.

## Fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
CookieRequest merupakan suatu class bawaan dari pacakage ```pbp django auth```. 

Fungsi :
- Mengelola sesi pengguna dalam aplikasi Flutter (menyimpan sesu login pengguna melalui cookie), termasuk autentikasi dan pengelolaan cookies.
- Library ini memungkinkan aplikasi melakukan permintaan HTTP yang terautentikasi tanpa perlu mengatur ulang informasi login setiap kali ada permintaan baru yang mempermudah proses pengriman data dengan autentikasi manhual
-  CookieRequest dibagikan ke seluruh komponen aplikasi agar semua bagian dapat menggunakan sesi yang sama secara konsisten, sehingga memudahkan komunikasi dengan server serta menjaga pengalaman pengguna yang lancar (Implementasi Stateful request).

Instance CookieRequest perlu diberikan kepada user agar data pengguna yang login akan telah tersimpan melalui cookie sehingga dapat diakses kembali.

## Mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
1. User memberkan input data lewat form di aplikasi :
2. Data akan divalidasi dan dikirim ke server menggunakan package ```http``` atau ```CookieRequest``` dalam body http dalam format Json.
- Server Django menerima data request melalui urls.py lalu logic diproses di views.py.
- Backend memproses data (misalnya menyimpan atau membaca dari database).- Django mengembalikan respons dalam bentuk JSON.keberhasilan. 
- data dari server diambil kembali menggunakan metode HTTP (seperti GET) pada Flutter, diubah menjadi objek model sesuai struktur JSON, lalu ditampilkan ke interface aplikasi menggunakan widget

## Mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

Proses Login

1. Pengisian Data: Pengguna memasukkan email dan kata sandi pada halaman login.
2. Pengiriman Permintaan: Setelah tombol login ditekan, data akan dikirim ke endpoint login pada Django menggunakan CookieRequest.
Pemrosesan Backend:
3. Django memeriksa kredensial yang dimasukkan.
Jika valid, server mengirimkan cookie autentikasi sebagai respons.
Penyimpanan Status: Cookie autentikasi disimpan dalam CookieRequest untuk keperluan permintaan selanjutnya.
4. Akses Menu: Jika login berhasil, menu utama aplikasi akan ditampilkan sesuai status autentikasi pengguna.

Proses Registrasi

1. Pengisian Data: Pengguna mengisi informasi akun, seperti nama, email, dan kata sandi.
2. Pengiriman Permintaan: Ketika tombol register ditekan, data akan dikirim ke endpoint register pada Django melalui http atau CookieRequest.
3. Pemrosesan Backend:
Django menyimpan data pengguna baru ke dalam basis data.
Django mengirimkan respons yang menandakan proses berhasil atau gagal.
4. Notifikasi: Aplikasi Flutter menampilkan pesan keberhasilan atau kesalahan sesuai respons yang diterima, kemudian mengarahkan pengguna ke halaman login.

Proses Logout

Permintaan Logout: Saat tombol logout ditekan, Flutter mengirimkan
1. permintaan ke endpoint logout pada Django menggunakan CookieRequest.
2. Penghapusan Cookie: Django menghapus sesi autentikasi pengguna.
3. Pembaruan Status: Aplikasi memperbarui status pengguna menjadi tidak login.
4. Navigasi: Pengguna diarahkan kembali ke halaman login.



