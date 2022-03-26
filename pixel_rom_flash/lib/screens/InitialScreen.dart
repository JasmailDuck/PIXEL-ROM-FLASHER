import 'dart:io';
import 'package:pixel_rom_flash/utils/uiGen.dart';
import 'package:process_run/shell.dart';
import 'package:flutter/material.dart';
import 'package:pixel_rom_flash/utils/process_handle.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: Container(
      width: size.width,
      height: size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text("PIXEL ROM FLASHER V0.0.1"),
          const CircularProgressIndicator(),
          const Text("CHECKING FOR TOOLS..."),
          Column(
            children: [
              ItemCheckListBoxUi(padding: const EdgeInsets.all(8.0), status: true, 
              child: child)
            ],
          )
          
        ],
      ),
    ));
  }
}
