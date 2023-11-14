import 'package:flutter/material.dart';
import 'package:inventory/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mochi Pachill',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor:
              Color.fromARGB(255, 166, 190, 210), // Atur warna AppBar di sini
        ),
        useMaterial3: true,

        // Material Color primarySwatch: Colors.indigo
      ),
      home: MyHomePage(),
    );
  }
}
