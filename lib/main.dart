import 'package:contatoss/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:contatoss/style.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
    theme: ThemeData(
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: redTheme,
      ),
      dividerTheme: DividerThemeData(color: grayDivider, thickness: 1),
      primarySwatch: blueTheme,
    ),
  ));
}
