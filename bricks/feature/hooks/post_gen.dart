import 'dart:io';
import 'package:mason/mason.dart';

void run(HookContext context) {
  
  final appDirectory = Directory.current;
  if (!appDirectory.existsSync()) return;

  // find files ending with .gitKeep
  final gitKeepFiles = appDirectory
      .listSync(recursive: true, followLinks: false)
      .where((entity) => entity is File && entity.path.endsWith('.gitkeep'));
  
  // delete these files
  for (final file in gitKeepFiles) {
    file.deleteSync();
  }

}