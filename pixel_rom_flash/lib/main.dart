import 'package:flutter/material.dart';
import 'package:pixel_rom_flash/screens/splash_screen.dart';

void main() {
  runApp(const CromFlash());
}

class CromFlash extends StatelessWidget {
  const CromFlash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pixel Custom Rom Flasher',
      home: SplashScreen(),
    );
  }
}

