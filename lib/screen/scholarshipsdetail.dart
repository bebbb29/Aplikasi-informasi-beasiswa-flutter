import 'package:flutter/material.dart';
import 'package:apk/screen/beasiswa.dart';

class ScholarshipDetailPage extends StatelessWidget {
  final Map<String, String> scholarship;

  ScholarshipDetailPage({required this.scholarship});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(scholarship['title']!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Deskripsi Beasiswa:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 8),
            Text('Deskripsi singkat tentang beasiswa ini.'),
            SizedBox(height: 16),
            Text(
              'Persyaratan Beasiswa:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 8),
            Text(
                'Persyaratan beasiswa termasuk kriteria kelayakan, batas waktu aplikasi, dan jumlah penerima.'),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Logika untuk mendaftar beasiswa
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BeasiswaApp()),
                );
              },
              child: Text('Mendaftar'),
            ),
          ],
        ),
      ),
    );
  }
}
