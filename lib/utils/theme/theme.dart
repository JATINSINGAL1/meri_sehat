import 'package:flutter/material.dart';
import 'package:meri_sehat/utils/theme/customtheme/appbar_theme.dart';

import 'customtheme/text_field_theme.dart';

class EAppTheme{
  EAppTheme._(); 
  static ThemeData lighttheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.lightBlue[100],
    primaryColor: Colors.blue,
    inputDecorationTheme: ETextFieldTheme.lightInputDecorationTheme,
    appBarTheme: EAppBarTheme.lightAppBarTheme,
  );
  

}
