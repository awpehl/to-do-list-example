import 'package:flutter/material.dart';

import 'app.dart';
import 'error.dart';

void main() {
  ErrorHandler.catchAll(() {
    runApp(const App());
  });
}
