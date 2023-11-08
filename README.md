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



