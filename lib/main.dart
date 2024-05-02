import 'package:animal_park_web/Config/Theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AnimalPark Web',
      theme: lightTheme,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
