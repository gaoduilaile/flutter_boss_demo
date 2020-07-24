import 'package:flutter/material.dart';
import 'package:flutterbossdemo/splash.dart';
import 'package:flutterbossdemo/home.dart';

void main() {
  runApp(new MaterialApp(
    title: "boss职聘",
    theme: new ThemeData(
        primaryIconTheme: const IconThemeData(color: Colors.white),
        brightness: Brightness.light,
        primaryColor: new Color.fromARGB(255, 0, 215, 198),
        accentColor: Colors.cyan[300]),
    home: SplashPage(),
  ));
}
