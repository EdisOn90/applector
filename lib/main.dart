import 'package:flutter/material.dart';

import 'pages/lectorCodigos.dart';
import 'pages/Home.dart';
import 'pages/generadorQr.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ScanPRO',
      theme: ThemeData(
        brightness: Brightness.dark, // Establece el brillo del tema en modo oscuro
        primarySwatch: Colors.grey,
        primaryColor: Colors.black,
        // accentColor: Colors.white,
        backgroundColor: Colors.grey[600],
        // ...
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Home(),
        '/scan_code': (context) => lectorCodigos(),
        '/generator_qr': (context) => generadorQr(),
      },
    );
  }
}
