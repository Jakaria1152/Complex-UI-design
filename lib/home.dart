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
            header3_home(),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              height: 180,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("assets/img/background.jpg"),
                        fit: BoxFit.fill    // fill dile image nosto na kore total height and width nibe
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 40,
                          offset: Offset(8,10),
                          color: color.AppColor.gredientsecond.withOpacity(0.3),


                        ),
                        BoxShadow(
                          blurRadius: 20,
                          offset: Offset(-1,-5),
                          color: color.AppColor.gredientsecond.withOpacity(0.3),


                        ),
                      ]
                    ),
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
margin: EdgeInsets.only(right: 200,bottom: 70),
                    decoration: BoxDecoration(
                      color: Colors.redAccent.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage("assets/img/boy run.jpg"),
                            fit: BoxFit.fill    // fill dile image nosto na kore total height and width nibe
                        ),

                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
