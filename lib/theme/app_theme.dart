import 'package:flutter/material.dart';

enum AppTheme {
  lightMode("Light Mode"),
  darkMode("Dark Mode");

  const AppTheme(this.name);
  final String name;
}

final appThemeData = {
  AppTheme.darkMode: ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color.fromRGBO(45, 62, 78, 1),
    primaryColor: const Color.fromRGBO(145, 104, 58, 1),
    primaryColorDark: Colors.white,
    primaryIconTheme: const IconThemeData(color: Colors.white),
    textTheme: const TextTheme(
        displayLarge: TextStyle(
      fontFamily: 'Tajawal',
      fontWeight: FontWeight.bold,
      color: Colors.grey,
      //fontSize: 30,
    )),
    iconTheme: const IconThemeData(color: Colors.grey),
    fontFamily: 'Tajawal',
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        iconColor: MaterialStateProperty.all(Colors.grey),
      ),
    ),
    useMaterial3: true,
  ),
  AppTheme.lightMode: ThemeData(
    brightness: Brightness.light,
    primaryIconTheme: const IconThemeData(color: Colors.black),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontFamily: 'Tajawal',
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(52, 61, 64, 1),
        // fontSize: 50,
      ),
      displayMedium: TextStyle(
        fontFamily: 'Tajawal',
      ),
    ),
    scaffoldBackgroundColor: const Color.fromRGBO(244, 244, 244, 1),
    useMaterial3: true,
  ),
};
