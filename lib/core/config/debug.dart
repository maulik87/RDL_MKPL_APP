import 'dart:developer';

abstract class Debug {
  static const bool debug = true;

  static void logE(String value) {
    if (debug) {
      log(value);
    }
  }
}
