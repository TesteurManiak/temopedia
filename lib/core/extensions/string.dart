extension Hardcoded on String {
  String get hardcoded => this;
}

extension StringExtensions on String {
  String get rootPath {
    final startsWithSlash = startsWith('/');
    return '${startsWithSlash ? '' : '/'}$this';
  }
}
