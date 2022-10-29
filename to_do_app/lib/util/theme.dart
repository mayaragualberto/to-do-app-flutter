import 'package:flutter/material.dart';

class ToDoTheme {
  static final light = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.amber,
    scaffoldBackgroundColor: Colors.amber.shade100,
    backgroundColor: Colors.amber.shade200,
    textTheme: _textTheme,
  );

  static final dark = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.grey,
    scaffoldBackgroundColor: Colors.grey.shade200,
    backgroundColor: Colors.grey,
    textTheme: _textTheme,
  );

  static const _textTheme = TextTheme(
    bodyText2: TextStyle(fontSize: 18.0),
  );
}
