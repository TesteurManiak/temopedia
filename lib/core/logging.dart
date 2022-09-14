import 'dart:developer' as developer;

import 'package:logger/logger.dart';

final _logger = Logger(
  output: _ConsoleOutput(),
);

class _ConsoleOutput extends LogOutput {
  @override
  void output(OutputEvent event) {
    event.lines.forEach(developer.log);
  }
}

class Log {
  const Log._();

  static void v(Object message) => _logger.log(Level.verbose, message);

  static void d(Object message) => _logger.log(Level.debug, message);

  static void i(Object message) => _logger.log(Level.info, message);

  static void w(Object message) => _logger.log(Level.warning, message);

  static void e(Object message) => _logger.log(Level.error, message);
}
