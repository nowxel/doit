import 'package:flutter/material.dart';
import 'package:doit/screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.grey),
      home: LoginScreen(),
    );
  }
}
