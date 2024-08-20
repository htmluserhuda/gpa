import 'package:flutter/material.dart';
import 'package:gpa/home.dart';

void main() {
  runApp(GPA());
}

class GPA extends StatelessWidget {
  const GPA({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
