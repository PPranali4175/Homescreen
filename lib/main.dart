import 'package:assignment_2/home.dart';
import 'package:assignment_2/theme.dart';
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
      debugShowCheckedModeBanner: false,
      theme: Themes(),
      home: Home(),
      // We use routeName so that we dont need to remember the name

    );
  }
}