import 'package:flutter/material.dart';

class Themes{

  var lightTheme = ThemeData(
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 72.0,
        fontWeight: FontWeight.bold,
      ),
      headline6: TextStyle(
        fontSize: 36.0,
        fontStyle: FontStyle.italic,
      ),
    ),
    useMaterial3: true,
    // colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(background: Colors.white),
  );

}