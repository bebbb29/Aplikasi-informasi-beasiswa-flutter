import 'package:flutter/material.dart';

void main() {
  runApp(BeasiswaApp());
}

class BeasiswaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Pendaftaran Beasiswa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BeasiswaForm(),
    );
  }
}

class BeasiswaForm extends StatefulWidget {
  @override
  _BeasiswaFormState createState() => _BeasiswaFormState();
}

class _BeasiswaFormState extends State<BeasiswaForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _gpaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Pendaftaran Beasiswa'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Nama Lengkap',
                ),
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return 'Nama tidak boleh kosong';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return 'Email tidak boleh kosong';
                  }
                  // Validasi format email sederhana
                  if (!RegExp(r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b').hasMatch(value)) {
                    return 'Email tidak valid';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _gpaController,
                decoration: InputDecoration(
                  labelText: 'IPK',
                ),
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return 'IPK tidak boleh kosong';
                  }
                  // Validasi IPK harus berupa angka
                  if (double.tryParse(value) == null) {
                    return 'IPK harus berupa angka';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Kirim data pendaftaran
                    // Contoh: _submitForm(_nameController.text, _emailController.text, double.parse(_gpaController.text));
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Pendaftaran berhasil')));
                  }
                },
                child: Text('Kirim Pendaftaran'),
              )


            ],
          ),
        ),
      ),
    );
  }
}

RaisedButton({required Null Function() onPressed, required Text child}) {
}
