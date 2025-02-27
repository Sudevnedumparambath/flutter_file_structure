import 'dart:io';

void run() {
  final gitkeepFile1 = File('lib/.gitkeep');
  if (gitkeepFile1.existsSync()) {
    gitkeepFile1.deleteSync();
  final gitkeepFile2 = File('lib/features/.gitkeep');
  if (gitkeepFile2.existsSync()) {
    gitkeepFile2.deleteSync();
  }
}
