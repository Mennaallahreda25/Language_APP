import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(LanguageApp());
}

class LanguageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Language App',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: HomeScreen(),
    );
  }
}

