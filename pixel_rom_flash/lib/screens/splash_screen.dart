import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

/// Stateless widget for the splash screen
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Gets the size of the window so the container can be centered
    final Size size = MediaQuery.of(context).size;

    //Create the scaffolding class
    return Scaffold(

        //Creates the container(SizedBox)
        body: SizedBox(
      //Sets the width of the container to match the width of the window
      width: size.width,

      //Sets the hieght of the container to match the hieght of the window
      height: size.height,

      //In the child of the scaffold, there is a column layout widget
      child: Column(
        //Aligns the column content to the center
        mainAxisAlignment: MainAxisAlignment.center,

        //The children of the column
        children: const [
          //Expanded child; where the animation file goes
          Expanded(

              //Centers the animation
              child: Center(
            //Anaimtion file
            child: RiveAnimation.asset('assets/pixel_launch.riv'),
          )),
        ],
      ),
    ));
  }
}
