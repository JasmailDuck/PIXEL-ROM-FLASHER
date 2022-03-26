import 'dart:io';
import 'package:process_run/shell.dart';

class ProcessHandle {
  verifyAdb() async {
    ProcessResult result;
    try {
      result = await Process.run("adb", ['devices']);
    } on ProcessException {
      return false;
    }
    return true;
  }

  
}
