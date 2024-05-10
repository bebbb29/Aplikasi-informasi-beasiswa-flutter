import 'package:flutter/material.dart';
import 'package:apk/screen/scholarshipspage.dart';

class FilterOptions extends StatelessWidget {
  // Data fakultas, tingkat studi, dan lokasi
  final List<String> faculties = ['Fakultas A', 'Fakultas B', 'Fakultas C'];
  final List<String> studyLevels = ['S1', 'S2', 'D3'];
  final List<String> locations = ['Jakarta', 'Bandung', 'Surabaya'];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.grey[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text('Filter:'),
          ElevatedButton(
            onPressed: () {
              // Logika untuk menyaring daftar beasiswa berdasarkan fakultas
              // Anda dapat menambahkan logika ini di sini
              _showFilterOptions(context, 'Fakultas', faculties);
            },
            child: Text('Fakultas'),
          ),
          ElevatedButton(
            onPressed: () {
              // Logika untuk menyaring daftar beasiswa berdasarkan tingkat studi
              // Anda dapat menambahkan logika ini di sini
              _showFilterOptions(context, 'Tingkat Studi', studyLevels);
            },
            child: Text('Tingkat Studi'),
          ),
          ElevatedButton(
            onPressed: () {
              // Logika untuk menyaring daftar beasiswa berdasarkan lokasi
              // Anda dapat menambahkan logika ini di sini
              _showFilterOptions(context, 'Lokasi', locations);
            },
            child: Text('Lokasi'),
          ),
        ],
      ),
    );
  }

  // Menampilkan opsi filter
// Menampilkan opsi filter
  void _showFilterOptions(
      BuildContext context, String title, List<String> options) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: ListView.builder(
            itemCount: options.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(options[index]),
                onTap: () {
                  // Lakukan penyaringan berdasarkan opsi yang dipilih
                  _filterByOption(title, options[index]);
                  // Navigasi ke halaman daftar beasiswa dengan filter yang dipilih
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => ScholarshipsPage()),
                  );
                },
              );
            },
          ),
        );
      },
    );
  }

  // Logika untuk melakukan penyaringan berdasarkan opsi yang dipilih
  void _filterByOption(String title, String option) {
    // Logika penyaringan berdasarkan opsi yang dipilih
    print('Menyaring berdasarkan $title: $option');
    // Anda dapat menambahkan logika penyaringan data beasiswa di sini
  }
}
