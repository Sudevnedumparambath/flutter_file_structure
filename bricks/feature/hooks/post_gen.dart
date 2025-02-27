import 'dart:io';
import 'package:mason/mason.dart';

void run(HookContext context) {
  final filesToDelete = [
    'lib/.gitkeep',
    'lib/features/.gitkeep',
  ];

  for (var filePath in filesToDelete) {
    final file = File(filePath);
    if (file.existsSync()) {
      file.deleteSync();
      context.logger.info('Deleted: $filePath'); // Logs the deletion
    }
  }

  context.logger.info('✅ post_gen hook completed!');
}
