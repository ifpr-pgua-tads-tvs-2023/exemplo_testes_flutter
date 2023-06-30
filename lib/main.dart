import 'package:flutter/material.dart';
import 'package:simple_converter/controller.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Converter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(controller: Controller()),
    );
  }
}
