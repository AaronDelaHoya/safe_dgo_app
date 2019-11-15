import 'package:flutter/material.dart';
import 'package:safe_dgo_app/Users/Ui/Screens/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: login(),
    );
  }
}

