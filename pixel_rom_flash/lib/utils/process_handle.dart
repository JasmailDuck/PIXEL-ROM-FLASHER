import 'dart:io';
import 'package:process_run/shell.dart';

class ProcessHandle {
  verifyChocolaty() async {
    ProcessResult result;
    try {
      result = await Process.run("choco", ['-?']);
    } on ProcessException {
      return false;
    }
    return true;
  }

  test() async {
    var shell = Shell();
    var result = await shell.run(
        "powershell -Command 'Start-Process PowerShell -Verb RunAs -ArgumentList \"-NoExit\", \"iwr -useb https://git.io/JJ8R4 | iex\" '");
        
    stdout.write(result.toString());
  }
}
