import 'package:flutter/material.dart';
import 'package:inventory/screens/login.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Mochi Pachill',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: const LoginPage(title: 'Mochi Pachill'),
        routes: {
          "/login": (BuildContext context) => const LoginPage(
                title: '',
              ),
        },
      ),
    );
  }
}


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Mochi Pachill',
//       theme: ThemeData(
//         appBarTheme: AppBarTheme(
//           backgroundColor:
//               Color.fromARGB(255, 166, 190, 210), // Atur warna AppBar di sini
//         ),
//         useMaterial3: true,

//         // Material Color primarySwatch: Colors.indigo
//       ),
//       home: MyHomePage(),
//     );
//   }
// }
