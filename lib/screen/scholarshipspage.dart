import 'package:flutter/material.dart';
import 'package:apk/screen/scholarshipsdetail.dart';
import 'package:apk/screen/filteroptions.dart';

class ScholarshipsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> fakeScholarships = [
      {
        'title': 'Beasiswa 1',
        'summary': 'Ringkasan singkat beasiswa 1',
        'faculty': 'Fakultas A',
        'studyLevel': 'S1',
        'location': 'Jakarta',
      },
      {
        'title': 'Beasiswa 2',
        'summary': 'Ringkasan singkat beasiswa 2',
        'faculty': 'Fakultas B',
        'studyLevel': 'S2',
        'location': 'Bandung',
      },
      {
        'title': 'Beasiswa 3',
        'summary': 'Ringkasan singkat beasiswa 3',
        'faculty': 'Fakultas C',
        'studyLevel': 'D3',
        'location': 'Surabaya',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Beasiswa'),
      ),
      body: Column(
        children: <Widget>[
          FilterOptions(),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: fakeScholarships.length,
              itemBuilder: (context, index) {
                // Ambil data palsu dari daftar beasiswa palsu
                final scholarship = fakeScholarships[index];
                return ListTile(
                  leading: Icon(Icons.school),
                  title: Text(scholarship['title']!),
                  subtitle: Text(
                    '${scholarship['summary']}\n'
                    'Fakultas: ${scholarship['faculty']}, '
                    'Tingkat Studi: ${scholarship['studyLevel']}, '
                    'Lokasi: ${scholarship['location']}',
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ScholarshipDetailPage(
                          scholarship: scholarship,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
