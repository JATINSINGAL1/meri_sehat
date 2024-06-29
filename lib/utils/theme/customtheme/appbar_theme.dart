import 'package:flutter/material.dart';

class EAppBarTheme{
  EAppBarTheme._();
  static final  lightAppBarTheme= AppBarTheme(
    elevation: 1,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.blue[600],
    surfaceTintColor: Colors.transparent,
    iconTheme: const IconThemeData(color: Colors.black, size: 24,),
    actionsIconTheme: const IconThemeData(color: Colors.black,size: 24),
    titleTextStyle: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black)
  );

  
}