import 'package:flutter/material.dart';
import 'package:project/ui/my_frist_app.dart';

//Refactor

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyFirstApp());
  }
}
