import 'package:flutter/material.dart';
import 'package:tictac/model/Homepage.dart';
import 'package:tictac/shared/ThemeManger.dart';
import 'package:tictac/shared/TextManger.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: textManger.Title1,
      theme: getTheme(),
      home: HomePage(),
    );
  }
}
