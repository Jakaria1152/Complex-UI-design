import 'package:complex_ui_design/widget/header4homepage.dart';
import 'package:complex_ui_design/widget/header1home.dart';
import 'package:complex_ui_design/widget/header2_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
              height: 10,
            ),
            header2_home(),
            SizedBox(
              height: 10,
            ),
            header3_home(),

            header4homepage(),

            Row(
              children: [
                Text('Area of focus',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.black),textAlign: TextAlign.start,),
              ],
            ),
            Expanded(
              child: ListView.builder(shrinkWrap: true,itemCount: 4,itemBuilder: (context, index) {  // if miss expanded show render overflow error
                return Row(
                  children: [
                    Container(
                      height: 200,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage('assets/img/ex1.jpg')
                        )
                      ),
                    )
                  ],
                );
              },),
            )
          ],
        ),
      ),
    );
  }
}
