// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:donation/aldonors.dart';
import 'package:donation/login.dart';

import 'package:flutter/material.dart';

class Splachscreen extends StatefulWidget {
  const Splachscreen({super.key});

  @override
  State<Splachscreen> createState() => _SplachscreenState();
}

class _SplachscreenState extends State<Splachscreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () async {
      await Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => loginscreen()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Image(
          image: AssetImage("assets/images/Group 155.png"),
        ),
      ),
    );
  }
}
