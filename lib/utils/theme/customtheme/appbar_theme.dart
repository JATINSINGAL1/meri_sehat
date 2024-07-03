import 'package:flutter/material.dart';

class EAppBarTheme {
  EAppBarTheme._();
  static final lightAppBarTheme = AppBarTheme(
      elevation: 0,
      centerTitle: false,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.blue[600],
      surfaceTintColor: Colors.transparent,
      iconTheme: const IconThemeData(
        color: Colors.white,
        size: 24,
      ),
      actionsIconTheme: const IconThemeData(color: Colors.white, size: 24),
      titleTextStyle: const TextStyle(
          fontSize: 24.0, fontWeight: FontWeight.w400, color: Colors.white));
}
