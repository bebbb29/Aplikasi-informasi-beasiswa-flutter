import 'package:flutter/material.dart';

class RegistrationForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          decoration: InputDecoration(
            labelText: 'Nama',
          ),
        ),
        TextField(
          decoration: InputDecoration(
            labelText: 'Email',
          ),
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
          ),
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Konfirmasi Password',
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
