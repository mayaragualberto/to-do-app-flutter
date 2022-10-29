import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:ToDoApp/pages/home_page.dart';
import 'package:ToDoApp/util/theme.dart';

void main() async {
  // iniciar hive
  await Hive.initFlutter();

  // abrir a box
  var box = await Hive.openBox("mybox");

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode currentThemeMode = ThemeMode.light;

  void toggleThemeMode() {
    setState(() {
      currentThemeMode = currentThemeMode == ThemeMode.light
          ? ThemeMode.dark
          : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(onThemeModePressed: toggleThemeMode),
      themeMode: currentThemeMode,
      theme: ToDoTheme.light,
      darkTheme: ToDoTheme.dark,
    );
  }
}
