import 'package:flutter/material.dart';
import 'package:apk/screen/loginpage.dart';

void main() {
  runApp(BeasiswaApp());
}

class BeasiswaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Informasi Beasiswa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}





