==========================TUGAS 7==========================
1. Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?

stateless:
    1. Stateless widget tidak dapat berubah (immutable) setelah dibuat. Artinya, mereka tidak menyimpan state yang dapat berubah selama lifetime widget.
    2. Re-build: Stateless widget di-rebuild setiap kali fungsi build dipanggil karena faktor-faktor eksternal, seperti dalam kasus perubahan data yang diterima dari parent widget.
    3. Mereka ideal untuk bagian UI yang tidak bergantung pada state apa pun, seperti ikon, teks, dan tombol yang tidak berubah ketika diinteraksi.

statfeul:
    1. stateful widget dapat berubah. Mereka memiliki mutable state yang bisa diupdate, biasanya sebagai respons terhadap aksi pengguna atau data yang berubah.
    2. Stateful widget memiliki lifecycle yang lebih kompleks. Mereka memiliki setidaknya dua classes: satu untuk widget itu sendiri dan satu untuk state-nya.
    3. Stateful widget dapat mempertahankan state saat di-build ulang, seperti scroll position atau teks dalam text field.
    4. Digunakan untuk bagian UI yang interaktif dan yang harus merespons terhadap perubahan data atau interaksi pengguna, seperti form, slider, atau user interface yang membutuhkan animasi.

Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing

    1. Scaffold
        merupakan layout utama pada halaman flutter, dalam hal ini berisi App Bar yang bertujuan untuk memberikan judul pada tampilan flutter
    2. SingleChildScrollView
        digunakan agar user dapat melakukan scroll pada child widgetnya yang berguna saat konten yang ditampilkan dapat melebihi batas layar
    3. Padding
        memberikan space di sekeliling child widgetnya
    4. Column
        memberikan layout yang dapat mengatur child widget dalam bentuk kolom vertikal
    5. Gridview
        mengatur child widgets-nya dalam bentuk grid yang dapat di-scroll
    6. Material
        memberikan efek visual pada child widgetnya
    7. InkWell
        memberikan efek efek ink splash pada material design saat widget ditekan
    8. Container
        kotak yang berfungsi untuk membunngkus blok di dalamnya agar tampilan UI menjadi lebih rapi terhadap ukuran layar
    9. Icon
        memberikan gambar petunjuk atau ikon untuk memudahkan navigasi user 
    10. Text
        menampilkan teks yang dibutuhkan pada flutter yang juga dapat mengatur style teks tersebut

 Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)

    1. Membuat sebuah program Flutter baru dengan tema inventory seperti tugas-tugas sebelumnya
        - membuat direktori folder baru dengan nama yang disesuaikan
        - men-generate flutter pada direktori tersebut dengan membuka terminal dan mengetik 
            flutter create (app name)
        - lalu masuk ke (app name) tersebut dengan perintah
            cd (app name)
        - menjalankan flutter pada terminal tersebut dengan perintah
            flutter run
        - terdapat pilihan untuk membuka tampilan flutter seperti pada windows, chrome, atau edge. Pilih angka sesuai keinginan
    
    2. Membuat tiga tombol sederhana dengan ikon dan teks untuk:
        Melihat daftar item (Lihat Item)
        Menambah item (Tambah Item)
        Logout (Logout)

        -sebelum membuat widget tersebut, kita dapat mengubah sifat widget menjadi stateless dengan mengubah 
        bagian 
        ({super.key, required this.title}) menjadi ({Key? key}) : super(key: key); 
        
        serta menghapus 
        final String title;

        pada menu.dart

        -mendefinisikan teks lihat item, tambah item, dan logout
        class ShopItem {
            final String name;
            final IconData icon;

            ShopItem(this.name, this.icon);
        }

        -menambahkan list ShopItem tersebut
        final List<ShopItem> items = [
            ShopItem("Lihat Produk", Icons.checklist),
            ShopItem("Tambah Produk", Icons.add_shopping_cart),
            ShopItem("Logout", Icons.logout),
        ];

        -membuat UI halaman dengan scaffold dalam method widget build
            - menambahkan app bar dengan judul halaman
            - menambahkan SingleChildScrollView agar halaman dapat discroll
            - menambahkan padding untuk memberi space di dalam halaman
            - menambahkan column untuk menata widgets secara vertikal
            - menambahkan teks header untuk nama toko
            - menambahkan GridView. count untuk menampilkan item-item dengan layout grid
        
        -mendefinisikan tampilan item dengan widget kustom
            - setelah GridView, buat iterasi .map() pada list items dan ubah setiap ShopItem menjadi SHopCard

    3. Memunculkan Snackbar dengan tulisan:
        "Kamu telah menekan tombol Lihat Item" ketika tombol Lihat Item ditekan.
        "Kamu telah menekan tombol Tambah Item" ketika tombol Tambah Item ditekan.
        "Kamu telah menekan tombol Logout" ketika tombol Logout ditekan.

        - menggunakan callback onTap dalam InkWell, pada variabel content, isi dengan text sesuai dengan kriteria soal
    
    4. Membuat warna berbeda-beda tiap tombol lihat item, tambah item, dan logout
        -menambahkan parameter 'color' pada kelas ShopItem
            final Color color
        -memperbarui parameter ShopItem
             ShopItem(this.name, this.icon, this.color); 
        -memperbarui list items dengan warna yang berbeda sesuai keinginan
            final List<ShopItem> items = [
                ShopItem("Lihat Item", Icons.checklist, Color.fromRGBO(150, 126, 118, 1.0)),
                ShopItem("Tambah Produk", Icons.add_shopping_cart, Color.fromRGBO(215, 192, 174, 1.0)),
                ShopItem("Logout", Icons.logout, Color.fromRGBO(238, 227, 203, 1.0)),
            ];

        -pada return Material, menambahkan warna item 
            color: item.color


    5.  Melakukan add-commit-push ke GitHub.
        - membuat repository baru pada github
        - melakukan git init pada direktori pengerjaan tugas ini
        - melakukan konfigurasi nama pengguna dan email
        - membuat branch baru dengan perintah 
            git branch -M (nama branch)
        - menghubungkan dengan repository pada github yang telah dibuat sebelumnya
            git remote add origin (url repo)
        - menambah perubahan dengan 
            git add .
        - commit perubahan dengan 
            git commit -m "pesan commit"
        - menyimpan perubahan dengan
            git push -u origin (nama branch yang telah dibuat sebelumnya)


==========================TUGAS 8==========================

  

**1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!**

 - Metode Navigator.push() digunakan untuk menambahkan halaman baru ke tumpukan navigasi.Saat menggunakan Navigator.push(), halaman yang baru ditambahkan ke atas halaman saat ini pada tumpukan navigasi.
	 - Hal ini berarti jika pengguna menekan tombol "Kembali" pada halaman baru, mereka akan kembali ke halaman sebelumnya dalam tumpukan navigasi.
	 - Contoh penggunaan Navigator.push():

// Navigasi ke halaman baru
Navigator.push(
	context,
	MaterialPageRoute(builder: (context) => SecondScreen()),
);
Navigator.pushReplacement():

 - Metode Navigator.pushReplacement() digunakan untuk menambahkan halaman baru ke tumpukan navigasi, tetapi jika menggunakan Navigator.pushReplacement(), halaman saat ini dalam tumpukan navigasi akan digantikan oleh halaman baru yang ditambahkan.
	 - Hal ini berarti jika pengguna menekan tombol "Kembali" pada halaman baru, mereka tidak akan kembali ke halaman sebelumnya dalam tumpukan navigasi, melainkan langsung keluar dari halaman baru tersebut.
	 - Contoh penggunaan Navigator.pushReplacement():
	 // Navigasi ke halaman baru dan menggantikan halaman saat ini
		Navigator.pushReplacement(
			context,
			MaterialPageRoute(builder: (context) => ThirdScreen()),
		);
		
 - Contoh Penggunaan:
	 Misalkan kita memiliki aplikasi dengan tiga halaman: Halaman A, Halaman B, dan Halaman C. 
	 - Jika kita menggunakan Navigator.push() dari Halaman A ke Halaman B, maka tumpukan navigasi akan menjadi A -> B. Jika Anda kemudian menggunakan Navigator.push() lagi dari Halaman B ke Halaman C, tumpukan navigasi akan menjadi A -> B -> C.
	 - Jika kita menggunakan Navigator.pushReplacement() dari Halaman A ke Halaman B, maka tumpukan navigasi akan menjadi B. Artinya, ketika kita menekan tombol "Kembali" di Halaman B, Anda akan keluar dari aplikasi.
	 - Selanjutnya, jika kita menggunakan Navigator.pushReplacement() dari Halaman B ke Halaman C, tumpukan navigasi akan menjadi C, dan jika Anda menekan tombol "Kembali" di Halaman C, kita akan keluar dari aplikasi.

2. **Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!**

A. Container Widget
untuk mengatur tampilan dan tata letak elemen-elemen dalam kotak dan mengelola tampilan dan dekorasi elemen-elemen seperti teks, gambar, atau widget lain.
Contoh:
Container(
color: Colors.blue,
child: Text('Ini adalah teks dalam Container'),
)

B. Row dan Column Widgets
untuk mengatur elemen-elemen dalam baris (horizontal) dan kolom (vertikal) secara berurutan
Contoh:
Row(
children: [
Icon(Icons.star),
Text('5 Stars'),
],
)

Column(
children: [
Text('Judul'),
Text('Deskripsi'),
],
)

C. ListView Widget
untuk mengatur elemen-elemen dalam daftar yang dapat di-scroll
Contoh:
ListView(
children: [
ListTile(title: Text('Item 1')),
ListTile(title: Text('Item 2')),
// ...
],
)

d. Stack Widget
untuk menggabungkan elemen-elemen secara tumpang tindih (berlapis) satu sama lain
Contoh:
Stack(
children: [
Image.asset('background.png'),
Positioned(
top: 20,
left: 20,
child: ElevatedButton(
onPressed: () {},
child: Text('Tombol'),
),
),
],
)

e. GridView Widget
mengatur elemen-elemen dalam bentuk grid (kotak) dengan baris dan kolom
Contoh:
GridView.builder(
gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
crossAxisCount: 2,
),
itemBuilder: (context, index) {
return Image.asset('gambar_$index.png');
},
)
  
**3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!**
 - TextFormField untuk nama, harga, dan deskripsi
	Elemen input ini digunakan untuk mengambil informasi tentang nama produk, harga, dan deskripsi produk yang akan ditambahkan.
    -   Alasan penggunaan elemen ini adalah karena kita perlu mengumpulkan data teks berupa nama produk dari pengguna, data numerik berupa harga produk dari pengguna, dan data teks berupa deskripsi produk dari pengguna. 
    - TextFormField digunakan karena memungkinkan pengguna memasukkan teks dengan mudah dan juga menyediakan fitur validasi bawaan.
    -

**4. Bagaimana penerapan clean architecture pada aplikasi Flutter?**

Penerapan Clean Architecture pada aplikasi Flutter dapat membantu memisahkan kode bisnis dari kode UI, sehingga memungkinkan pengujian yang lebih baik dan meningkatkan skalabilitas aplikasi.

 - **Domain Layer**: mendefinisikan entitas, use cases (interactors), dan repositori (interfaces) yang merepresentasikan kontrak untuk mengakses data.
 - **Data Layer**: mengimplementasikan kontrak yang didefinisikan di domain layer.
 - **Presentation Layer**:  bertanggung jawab untuk tampilan dan UI. Termasuk widget Flutter, manajemen state (misalnya dengan provider atau Bloc), dan routing.
 -  **Dependency Injection**: Untuk menghubungkan semua lapisan dan membantu menghubungkan use cases dari domain layer dengan widget di presentation layer.

**5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step!**

-  Menambahkan Drawer Menu Untuk Navigasi
	- membuat berkas baru left_drawer.dart
	- melakukan routing ke MyHomePage dan ShopFormPage
	- memasukkan drawer ke halaman menu
- Menambahkan Form dan Elemen Input
	- membuat berkas baru shoplist_form.dart
	- mengubah widget Placeholder
	- membuat variabel baru pada atribut key untuk handler dari form state, validasi form, dan penyimpanan form
	- mengisi widget form dengan field
	- membuat widget TextFormField untuk keperluan input data
	- membuat button save pada form
- Memunculkan data input
	- menambahkan fungsi `showDialog()` pada bagian `onPressed()`
- Menambahkan Fitur Navigasi pada Tombol
	- menggunakan `Navigator.push()` sehingga user dapat menekan tombol back untuk kembali ke halaman menu dan  menggunakan `Navigator.pop()` sehingga dapat membuat kode dalam program untuk kembali ke halaman menu
- Melakukan Refactoring File
	- membuat berkas baru seperti shop_card.dart
	- memindahkan isi widget `ShopItem` pada `menu.dart` ke shop_card.dart
	- mengimpor halaman `shoplist_form.dart` pada berkas `shop_card.dart` dan import halaman `shop_card.dart` pada berkas `menu.dart`
	- memindahkan
	-  file `menu.dart` dan `shoplist_form.dart` ke dalam folder `screens`
- Melakukan git add, commit, dan push

**======================TUGAS 9==========================**
1. **Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?**
Ya,  kita bisa melakukan pengambilan data JSON tanpa membuat model terlebih dahulu. Hal ini dapat dilakukan dengan menggunakan library atau framework yang mendukung pengambilan data JSON secara langsung.
Apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON bergantung pada kebutuhan dan kompleksitas proyek yang sedang dikerjakan.

Jika kita hanya perlu mengambil dan menggunakan data JSON tanpa memerlukan pemrosesan bahasa alami atau tugas yang rumit, maka tidak perlu membuat model terlebih dahulu. Namun, jika kita memerlukan pemrosesan bahasa alami atau tugas yang lebih kompleks, seperti pemahaman teks atau generasi teks, maka membuat model khusus dapat membantu dalam mengatasi tugas tersebut dengan lebih baik.

**2. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa  _instance_  CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.**
 - CookieRequest adalah sebuah kelas atau objek yang digunakan dalam aplikasi Flutter untuk mengirim permintaan HTTP yang menyertakan cookie. 
 - Cookie adalah mekanisme yang digunakan untuk menyimpan informasi pada sisi klien (misalnya, pada peramban web) dan mengirimkannya kembali ke server saat melakukan permintaan HTTP berikutnya. 
 - CookieRequest digunakan untuk mengelola cookie yang dikirim dan diterima saat berkomunikasi dengan server.
 - _instance_ CookieRequest perlu dibagikan ke semua komponen di aplikasi Flutter untuk mempertahankan keadaan atau status cookie yang sama di seluruh aplikasi. 
 - Ketika kita membagikan _instance_ CookieRequest ke semua komponen, kita memastikan bahwa semua permintaan HTTP yang dilakukan oleh komponen tersebut menggunakan cookie yang sama. Hal Ini penting jika kita ingin menjaga sesi atau keadaan tertentu di server yang terkait dengan cookie.
 - Dengan membagikan _instance_ CookieRequest, kita dapat dengan mudah mengelola cookie yang dikirim dan diterima di berbagai komponen aplikasi tanpa perlu mengulangi pengaturan cookie di setiap komponen. Hal Ini membantu dalam menjaga konsistensi dan memudahkan pengelolaan cookie dalam aplikasi Flutter kita.
	
**3. Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.**
	-   Ambil data JSON: Gunakan metode seperti permintaan HTTP atau API untuk mengambil data JSON dari sumbernya. Kita dapat menggunakan `http` atau `dio` untuk melakukan permintaan HTTP.
    
 -   Analisis data JSON: Setelah mendapatkan data JSON, kita perlu menganalisisnya agar bisa digunakan dalam aplikasi Flutter. Flutter menyediakan dukungan bawaan untuk mengurai JSON dengan menggunakan paket `dart:convert`. Kita dapat menggunakan metode `jsonDecode()` untuk mengurai data JSON menjadi objek Dart yang dapat digunakan.
    
 -   Buat model data: Selanjutnya, kita perlu membuat model data yang sesuai dengan struktur JSON. Model data ini akan membantu kita mengorganisasi dan mengakses data dengan mudah. Kita dapat membuat kelas Dart yang mewakili struktur data JSON dengan menggunakan tipe data yang sesuai.
    
 -   Map data JSON ke model: Setelah memiliki model data, kita dapat menggunakan metode `fromJson()` untuk memetakan data JSON ke dalam objek model. Kita bisa mengakses nilai-nilai dalam JSON dan mengisinya ke dalam objek model yang sesuai.
    
 -   Tampilkan data pada Flutter: Kita dapat menggunakan objek model yang berisi data yang diambil dari JSON untuk menampilkan informasi di aplikasi Flutter. Kita dapat menggunakan widget seperti `Text`, `ListView`, atau `GridView` untuk menampilkan data tersebut pada tampilan aplikasi.

**4. Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.**
 -   Flutter: Pada sisi Flutter, kita perlu memiliki user interface untuk pengguna memasukkan informasi akun, seperti nama pengguna dan kata sandi. KIta dapat menggunakan widget Flutter seperti `TextField` untuk mengumpulkan input pengguna.
    
 -   Permintaan HTTP: Setelah pengguna memasukkan informasi akun, kita perlu mengirimkan permintaan HTTP dari Flutter ke server Django. Kita dapat menggunakan paket seperti `http` atau `dio` untuk melakukan permintaan HTTP POST ke endpoint autentikasi yang telah dibuat di Django.
    
 -   Django: Di sisi server Django, kita perlu mengimplementasikan logika autentikasi. Django menyediakan fitur autentikasi yang kuat dengan modul bawaan, seperti `django.contrib.auth`. Kita dapat menggunakan metode seperti `authenticate` untuk memeriksa kecocokan nama pengguna dan kata sandi yang diterima dari Flutter dengan data yang ada di Django.
    
 -   Proses autentikasi: Setelah memeriksa kecocokan nama pengguna dan kata sandi, Django akan menghasilkan token otentikasi. Kita dapat menggunakan paket seperti `django-rest-framework` untuk memudahkan implementasi autentikasi berbasis token di Django.
    
 -   Menyimpan token: Django akan mengirimkan token otentikasi kembali ke Flutter sebagai respons. Di sisi Flutter, kita perlu menyimpan token tersebut, misalnya di dalam penyimpanan lokal seperti `SharedPreferences` atau `SecureStorage`. Token ini akan digunakan untuk otentikasi setiap permintaan yang memerlukan akses terotentikasi ke server Django di masa mendatang.
    
 -   Tampilan menu: Setelah proses autentikasi selesai, kita dapat menampilkan menu atau tampilan lainnya pada Flutter. Berdasarkan status autentikasi, kita dapat menentukan apakah akan menampilkan menu utama atau tampilan lain yang sesuai.

**5. Sebutkan seluruh  _widget_  yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.**

 - File product detail berisi kode untuk halaman detail produk dalam aplikasi Flutter. Dalam halaman ini, digunakan widget seperti MaterialApp, Scaffold, AppBar, LeftDrawer, SingleChildScrollView, Column, Text, SizedBox, dan ElevatedButton.
 - File list_product berisi kode untuk halaman daftar produk dalam aplikasi Flutter. Dalam halaman ini, digunakan widget seperti MaterialApp, Scaffold, AppBar, LeftDrawer, FutureBuilder, Center, CircularProgressIndicator, Column, Text, SizedBox, ListView.builder, GestureDetector, Container, dan ElevatedButton.
 - File product berisi kode yang mengimpor pustaka dart:convert dan mendefinisikan fungsi dan kelas yang digunakan untuk mengonversi data JSON menjadi objek Dart dan sebaliknya. Class Product dan Fields mewakili entitas produk dan bidang produk, dengan metode fromJson dan toJson untuk konversi JSON.
 - File login berisi kode untuk halaman login dalam aplikasi Flutter. Dalam halaman ini, digunakan widget seperti MaterialApp, Scaffold, AppBar, Container, Column, TextField, SizedBox, ElevatedButton, Text, SnackBar, AlertDialog, TextButton, Provider, pbp_django_auth, CookieRequest, Navigator, dan PageRouteBuilder. Widget ini digunakan untuk membuat tampilan login, mengelola otentikasi dengan Django, menampilkan pesan sementara, dan mengatur navigasi antar layar.
 
**6. Jelaskan bagaimana cara kamu mengimplementasikan  _checklist_  di atas secara  _step-by-step_! (bukan hanya sekadar mengikuti tutorial)**

 - Integrasi Autentikasi Django-Flutter
	 (pada file django yang telah di buat sebelumnya)
	 - membuat django-app authentication
	 - menambahkan authentication pada  `INSTALLED_APPS`  di  `settings.py`
	 - menjalankan pip install django-cors-headers
	 - menambahkan  `corsheaders` ke `INSTALLED_APPS` di `settings.py`
	 - membuat sebuah metode _view_ untuk login
	 - membuat _file_  `urls.py` pada folder `authentication`
	 - menambahkan routing  `path('auth/', include('authentication.urls'))`
	 
 - Integrasi Sistem Autentikasi pada Flutter
	 - menginstal package
		flutter pub add provider
		flutter pub add pbp_django_auth
	 - memodifikasi _root widget_ untuk menyediakan `CookieRequest`  _library_ ke semua _child widgets_ dengan menggunakan `Provider`
	 - membuat _file_ baru pada folder `screens` dengan nama `login.dart`
	 - mengubah `home: MyHomePage()` menjadi `home: LoginPage()` Pada _file_  `main.dart`, pada Widget `MaterialApp(...)`
	 
 - Pembuatan Model Kustom
	 - membuat kode model melalui Quicktype
	 - membuat file baru pada folder `lib/models` dengan nama `product.dart`
	 - tempel kode yang sudah disalin dari Quicktype
	 
 - Penerapan Fetch Data dari Django Untuk Ditampilkan ke Flutter
	 - Menambahkan Dependensi HTTP
			 (pada file flutter)
		 - Lakukan `flutter pub add http`
		 - menambahkan kode pada file `android/app/src/main/AndroidManifest.xml`
	 - Melakukan Fetch Data dari Django
		 - membuat file list_product.dart
		 - impor _library_ yang dibutuhkan dan mengisi app name sesuai proyek flutter
		 - mengimpor file yang diperlukan
		 - menambahkan halaman `list_product.dart` ke `widgets/left_drawer.dart`
		 - mengubah fungsi tombol `Lihat Produk` pada halaman utama agar mengarahkan ke halaman `ProductPage`

 - Integrasi Form Flutter Dengan Layanan Django
	 (pada proyek django)
	 - membuat sebuah fungsi _view_ baru reate_product_flutter pada `main/views.py`
	 - menambahkan _path_ baru pada `main/urls.py`
	 (pada proyek flutter)
	 - menghubungkan halaman `shoplist_form.dart` dengan `CookieRequest`
	 - melakukan _quick fix_ pada baris-baris yang bermasalah
	 
 - Implementasi Fitur Logout
	 (pada proyek django)
	 - membuat metode _view_ untuk logout pada `authentication/views.py`
	 - menambahkan _path_ baru pada `authentication/urls.py`
	  (pada proyek flutter)
	 - pada _file_  `lib/widgets/shop_card.dart`, mengubah perintah `onTap: () {...}` pada widget `Inkwell` menjadi `onTap: () async {...}`

	 

	 
	 