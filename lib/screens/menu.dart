import 'package:flutter/material.dart';
import 'package:inventory/widgets/left_drawer.dart';
import 'package:inventory/screens/shoplist_form.dart';
import 'package:inventory/widgets/shop_card.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final List<ShopItem> items = [
    ShopItem("Lihat Item", Icons.checklist, Color.fromARGB(255, 150, 126, 118)),
    ShopItem("Tambah Produk", Icons.add_shopping_cart,
        Color.fromARGB(255, 215, 192, 174)),
    ShopItem("Logout", Icons.logout, Color.fromARGB(255, 238, 227, 203)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mochi Pachill',
        ),
        backgroundColor: Color.fromARGB(255, 118, 133, 150),
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: SingleChildScrollView(
        // Widget wrapper yang dapat discroll
        child: Padding(
          padding: const EdgeInsets.all(10.0), // Set padding dari halaman
          child: Column(
            // Widget untuk menampilkan children secara vertikal
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                child: Text(
                  'Mochi Pachill', // Text yang menandakan toko
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Grid layout
              GridView.count(
                // Container pada card kita.
                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: items.map((ShopItem item) {
                  // Iterasi untuk setiap item
                  return ShopCard(item);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
