import 'package:app_libros/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class IconHeader extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool fullScreen;
  final Color color1, color2;
  const IconHeader(
      {Key? key,
      required this.icon,
      required this.title,
      required this.fullScreen,
      required this.color1,
      required this.color2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorIcon = Colors.white.withOpacity(0.2);
    final colorTitle = Colors.white.withOpacity(0.7);

    return Stack(
      children: <Widget>[
        BackgroundHeader(
          fullScreen: fullScreen,
          color1: color1,
          color2: color2,
        ),
        Positioned(
            top: -10,
            left: 325,
            child: FaIcon(icon, size: 160, color: colorIcon)),
        Column(
          children: [
            const SizedBox(height: 70, width: double.infinity),
            Text(title, style: TextStyle(fontSize: 25, color: colorTitle)),
            const SizedBox(height: 50),
            if (fullScreen) const SearchBook(),
          ],
        )
      ],
    );
  }
}

class BackgroundHeader extends StatelessWidget {
  final Color color1, color2;
  final bool fullScreen;
  const BackgroundHeader({
    Key? key,
    required this.color1,
    required this.color2,
    required this.fullScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: (fullScreen) ? 0 : 0,
        ),
        child: Container(
          width: double.infinity,
          height: (fullScreen) ? 260 : 100,
          decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.only(bottomRight: Radius.circular(80)),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.topCenter,
                  colors: <Color>[color1, color2])),
        ));
  }
}
