import 'package:complex_ui_design/widget/header1home.dart';
import 'package:complex_ui_design/widget/header2_home.dart';
import 'package:flutter/material.dart';

import '_header3_home.dart';
import 'colors.dart'
    as color; // as diye je nam dibo (color) oi nam diye sorasori access kora jai

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.whitecolor,
      body: Container(
        padding: EdgeInsets.only(top: 70, left: 30, right: 30),
        child: Column(
          children: [
            header1home(),
            SizedBox(
              height: 30,
            ),
            header2_home(),
            SizedBox(
              height: 20,
            ),
            header3_home()
          ],
        ),
      ),
    );
  }
}
