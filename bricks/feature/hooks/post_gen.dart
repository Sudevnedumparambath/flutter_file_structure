import 'dart:io';

void run(HookContext context) {
  final featureName = context.vars['feature_name'];
  final featurePath = 'lib/features/$featureName';

  // Delete .gitignore files
  final libGitignore = File('lib/.gitkeep');
  if (libGitignore.existsSync()) {
    libGitignore.deleteSync();
  }

  final featureGitignore = File('lib/features/.gitkeep');
  if (featureGitignore.existsSync()) {
    featureGitignore.deleteSync();
  }

  // Delete .gitkeep file
  // final gitkeepFile = File('$featurePath/.gitkeep');
  // if (gitkeepFile.existsSync()) {
  //   gitkeepFile.deleteSync();
  // }

  print('Deleted .gitignore and .gitkeep files.');
}

class HookContext {
  final Map<String, dynamic> vars;

  HookContext(this.vars);
}