import 'package:flutter/material.dart';
import 'package:apk/screen/scholarshipspage.dart';
import 'package:apk/screen/registpage.dart';
import 'package:apk/screen/loginform.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Selamat datang di Aplikasi Informasi Beasiswa'),
            SizedBox(height: 20),
            LoginForm(),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman daftar beasiswa (ScholarshipsPage)
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScholarshipsPage()),
                );
              },
              child: Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman pendaftaran (RegistrationPage)
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegistrationPage()),
                );
              },
              child: Text('Daftar'),
            ),
          ],
        ),
      ),
    );
  }
}
