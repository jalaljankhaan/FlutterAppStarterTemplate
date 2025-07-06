import 'package:flutter/foundation.dart';
import 'package:flutterappstartertemplate/core/logger/logger.dart';

class ConsoleLogger implements Logger {
  @override
  void log(String message) {
    if(kDebugMode) {
      print(message);
    }
  }

  @override
  void loge(Exception error) {
    if(kDebugMode) {
      print(error);
    }
  }

}