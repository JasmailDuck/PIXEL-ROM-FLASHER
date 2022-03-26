import 'dart:io';
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
          FutureBuilder(
            future: ProcessHandle().verifyChocolaty(),
            builder: (context, status) {
              if (status.data == false) {
                return AlertDialog(
                  title: const Text(
                      "Chocoloty is not Installed, Would you like to install it"),
                  actions: <Widget>[
                    TextButton(
                        onPressed: () {
                          ProcessHandle().test();
                        },
                        child: const Text("Yes"))
                  ],
                );
              } else {
                return const Text("It is installed");
              }
            },
          )
        ],
      ),
    ));
  }
}
