import 'package:flutter/material.dart';
import '../screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({key? key}) : super(key: key);
}

// This widget is the root of your application.
@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'ToDo App',
    home: Home(),
  );
}