import 'dart:io';

void run(Map<String, dynamic> vars) {
  final featureName = vars['feature_name'];
  final featurePath = 'lib/features/$featureName';

  // Delete .gitignore files
  final libGitignore = File('lib/.gitignore');
  if (libGitignore.existsSync()) {
    libGitignore.deleteSync();
  }

  final featureGitignore = File('$featurePath/.gitignore');
  if (featureGitignore.existsSync()) {
    featureGitignore.deleteSync();
  }

  // Delete .gitkeep file
  final gitkeepFile = File('$featurePath/.gitkeep');
  if (gitkeepFile.existsSync()) {
    gitkeepFile.deleteSync();
  }

  print('Deleted .gitignore and .gitkeep files.');
}