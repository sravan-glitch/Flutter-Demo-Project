import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappdevolope/Views/login.dart';
import 'package:flutterappdevolope/Views/register.dart';

void main() {
  runApp(hello());
}

class hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.deepPurpleAccent,
          body: Register()),
    );
  }
}
