import 'dart:io';

String write(String prompt) {
  stdout.write(prompt);
  return stdin.readLineSync() ?? '';
}
