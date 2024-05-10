import 'package:flutter/material.dart';
import 'package:apk/screen/scholarshipspage.dart';
import 'package:apk/screen/registform.dart';

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pendaftaran'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Halaman Pendaftaran'),
            RegistrationForm(),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logika untuk proses pendaftaran
                // Setelah pendaftaran berhasil, navigasikan ke halaman selanjutnya
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScholarshipsPage()),
                );
              },
              child: Text('Daftar'),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // Navigasi kembali ke halaman login setelah pendaftaran berhasil
                Navigator.pop(context);
              },
              child: Text('Sudah memiliki akun? Masuk di sini'),
            ),
          ],
        ),
      ),
    );
  }
}
