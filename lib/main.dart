import 'package:complex_ui_design/exercise_page.dart';
import 'package:flutter/material.dart';

import 'home.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExercisePage()                //HomePage(),
    );
  }
}
