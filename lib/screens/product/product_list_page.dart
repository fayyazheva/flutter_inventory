import 'package:flutter/material.dart';
import 'package:inventory/screens/product/product_manager.dart'; // Impor file yang menyimpan daftar produk

class ProductListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Produk'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].name),
            subtitle: Text(
                'Harga: ${products[index].price}, Deskripsi: ${products[index].description}'),
          );
        },
      ),
    );
  }
}
