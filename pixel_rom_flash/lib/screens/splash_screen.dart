import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: Container(
      width: size.width,
      height: size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Expanded(
            flex: 2,
            child:
            Center( child:
            RiveAnimation.asset('assets\\pixel_launch.riv'),)),
          Expanded(
            flex: 0,
            child:Text("Text H")),
          Expanded(
            
            child:Text("Version SVG"))
        ],
      ),
    ));
  }
}
