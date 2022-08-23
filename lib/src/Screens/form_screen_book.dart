import 'package:app_libros/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const <Widget>[
          IconHeader(
              icon: FontAwesomeIcons.book,
              title: 'Libreria el buen Pastor',
              color1: Color(0xff526BF6),
              color2: Color(0xff6767AC),
              fullScreen: false),
          DataForm()
        ],
      ),
    );
  }
}

class DataForm extends StatelessWidget {
  const DataForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
            child: Column(
          children: [
            const Text(
              'Por favor ingrese los datos',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            TextFormField(
              initialValue: 'Johanny',
              decoration: const InputDecoration(
                  labelText: 'Nombre', helperText: 'Nombre de usuario'),
            ),
            const SizedBox(height: 20),
            TextFormField(
              initialValue: 'Solano',
              decoration: const InputDecoration(
                  labelText: 'Apellido', helperText: 'Apellido de usuario'),
            ),
            const SizedBox(height: 20),
            TextFormField(
              initialValue: '60955250',
              decoration: const InputDecoration(
                  labelText: 'Telefono', helperText: 'Telefono de usuario'),
            ),
            const SizedBox(height: 20),
            TextFormField(
              initialValue: 'Johanny-94-@hotmail',
              decoration: const InputDecoration(
                  labelText: 'Email', helperText: 'Email de usuario'),
            ),
            const SizedBox(height: 20),
            TextFormField(
              initialValue: '09-03-1994',
              decoration: const InputDecoration(
                  labelText: 'Fecha de nacimiento',
                  helperText: 'fecha de nacimiento de usuario'),
            ),
            RadioListTile<int>(
                value: 1,
                groupValue: 1,
                title: const Text('Masculino'),
                onChanged: (value) {}),
            const Divider(),
            RadioListTile<int>(
                value: 2,
                groupValue: 2,
                title: const Text('Femenino'),
                onChanged: (value) {})
          ],
        )));
  }
}
