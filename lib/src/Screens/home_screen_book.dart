import 'package:app_libros/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  final Duration duration = const Duration(milliseconds: 300);
  @override
  void initState() {
    _controller = AnimationController(duration: duration, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            MenuScreen(controller: _controller!),
            HomeScreenBody(controller: _controller!, duration: duration),
          ],
        ),
      ),
    );
  }
}

class HomeScreenBody extends StatefulWidget {
  final AnimationController controller;
  final Duration duration;
  const HomeScreenBody(
      {Key? key, required this.controller, required this.duration})
      : super(key: key);

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  bool menuOpen = false;
  Animation<double>? _scaleAnimation;

  @override
  Widget build(BuildContext context) {
    _scaleAnimation ??=
        Tween<double>(begin: 1, end: 0.6).animate(widget.controller);
    var size = MediaQuery.of(context).size;

    return AnimatedPositioned(
      duration: widget.duration,
      top: 0,
      bottom: 0,
      left: menuOpen ? 0.4 * size.width : 0,
      right: menuOpen ? -0.4 * size.width : 0,
      child: ScaleTransition(
        scale: _scaleAnimation!,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              const SizedBox(height: 50),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  !menuOpen
                      ? IconButton(
                          icon: const Icon(Icons.menu),
                          onPressed: () {
                            setState(() {
                              widget.controller.forward();
                              menuOpen = true;
                            });
                          },
                        )
                      : IconButton(
                          icon: const Icon(Icons.arrow_back_ios),
                          onPressed: () {
                            setState(() {
                              widget.controller.reverse();
                              menuOpen = false;
                            });
                          },
                          color: Colors.blueGrey,
                        ),
                  Container(
                    child: const Text(
                      'Libreria el Buen Pastor',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),

              //const SizedBox(height: 40),
              const SearchBook(),
              const Flexible(flex: 1, child: CardsBodyBooks())
            ],
          ),
        ),
      ),
    );
  }
}
//     _scaleAnimation ??=
//         Tween<double>(begin: 1, end: 0.6).animate(widget.controller);
//     var size = MediaQuery.of(context).size;
//     return AnimatedPositioned(
//       duration: widget.duration,
//       top: 0,
//       bottom: 0,
//       left: menuOpen ? 0.3 * size.width : 0,
//       right: menuOpen ? -0.3 * size.width : 0,
//       child: ScaleTransition(
//         scale: _scaleAnimation!,
//         child: DefaultTabController(
//             length: 6,
//             child: Scaffold(
//                 body: SafeArea(
//                     child: Column(
//               children: [
//                 Container(
//                     margin: const EdgeInsets.only(top: 5),
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     height: 55,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         !menuOpen
//                             ? IconButton(
//                                 icon: const Icon(Icons.menu),
//                                 onPressed: () {
//                                   setState(() {
//                                     widget.controller.forward();
//                                     menuOpen = true;
//                                   });
//                                 },
//                                 color: Colors.white70,
//                               )
//                             : IconButton(
//                                 icon: const Icon(Icons.arrow_back_ios),
//                                 onPressed: () {
//                                   setState(() {
//                                     widget.controller.reverse();
//                                     menuOpen = false;
//                                   });
//                                 },
//                               ),
//                         const Text(
//                           'Libreria el Mae',
//                           style: TextStyle(
//                               fontSize: 25, fontWeight: FontWeight.bold),
//                         ),
//                         Container()
//                       ],
//                     )),
//                 const SizedBox(height: 20),
//                 const SearchBook(),
//                 const SizedBox(height: 20),
//                 const Flexible(
//                     child: Flexible(
//                   flex: 1,
//                   child: CardsBodyBooks(),
//                 ))
//               ],
//             )))),
//       ),
//     );
//   }
// }
