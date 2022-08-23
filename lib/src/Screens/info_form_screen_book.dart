import 'package:flutter/material.dart';

class InfoFormPage extends StatelessWidget {
  const InfoFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: const <Widget>[SizedBox(height: 35), InfoForm()]),
    );
  }
}

class InfoForm extends StatelessWidget {
  const InfoForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text('Nombre'),
        Divider(),
        Text('Apellidos'),
        Divider(),
        Text('Telefono'),
        Divider(),
        Text('Email'),
        Divider(),
        Text('Fecha de nacimiento'),
        Divider(),
        Text('genero')
      ],
    );
  }
}
