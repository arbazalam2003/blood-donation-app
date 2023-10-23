// ignore_for_file: prefer_const_constructor
import 'package:donation/aldonors.dart';
import 'package:donation/login.dart';
import 'package:donation/splash_screen.dart';
import 'package:flutter/material.dart';

// ignore: unused_import

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splachscreen(),
    );
  }
}
