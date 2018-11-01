library flutter_log;

import 'package:flutter/material.dart';

/// Logger class
class L {
  ///
  static const paddingSize = 30;
  static const firstLineSymbol = "-->";

  /// Writes log in debug with the following format (see below)
  /// Main reason is to center the text around the end
  /// of the function name and the start of params
  ///
  /// -->             someText - o - o1 - o2
  /// -->             longText - o - o1 - o2 - o3
  /// -->     VeryVeryLongText - o - o1
  /// -->                 text - o - o1 - o2 - o3
  static i(String functionName, [Object o, Object o1, Object o2, Object o3]) {
    StringBuffer buffer = StringBuffer();

    buffer.write(firstLineSymbol);

    for (int i = 0; i < paddingSize - functionName.length; i++) {
      buffer.write(" ");
    }

    buffer.write(functionName);

    [o, o1, o2, o3].forEach((o) {
      if (o != null) buffer.write(" - ${o.toString()}");
    });

    debugPrint(buffer.toString());
  }
}
