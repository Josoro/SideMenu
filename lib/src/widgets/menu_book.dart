import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  final AnimationController controller;
  const MenuScreen({Key? key, required this.controller}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  Animation<double>? _scaleAnimation;
  Animation<Offset>? _slideAnimation;
  @override
  Widget build(BuildContext context) {
    _scaleAnimation ??=
        Tween<double>(begin: 0.6, end: 1).animate(widget.controller);

    _slideAnimation ??=
        Tween<Offset>(begin: const Offset(-1, 0), end: const Offset(0, 0))
            .animate(widget.controller);

    return SlideTransition(
      position: _slideAnimation!,
      child: ScaleTransition(
        scale: _scaleAnimation!,
        child: Container(
          color: Colors.blueGrey,
          child: Padding(
            padding: const EdgeInsets.only(top: 50, left: 25, bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: const <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/book.jpg'),
                      backgroundColor: Colors.transparent,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Menú de Opciones',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const MenuOptions(),
                const SizedBox(height: 40)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MenuOptions extends StatelessWidget {
  const MenuOptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        NewRow(
          text: 'Home',
          icon: Icons.home_work,
        ),
        SizedBox(
          height: 30,
        ),
        NewRow(
          text: 'Formulario',
          icon: Icons.note_alt_rounded,
        ),
        SizedBox(
          height: 20,
        ),
        NewRow(
          text: 'Datos del Formulario',
          icon: Icons.note_rounded,
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 60,
        ),
      ],
    );
  }
}

class NewRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const NewRow({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.white,
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
