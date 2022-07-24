import 'package:flutter/material.dart';
import 'welcomescreen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: welcomescreen(

      ),
    );
  }
}