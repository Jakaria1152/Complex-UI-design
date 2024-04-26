import 'dart:convert';

import 'package:complex_ui_design/widget/header4homepage.dart';
import 'package:complex_ui_design/widget/header1home.dart';
import 'package:complex_ui_design/widget/header2_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  List info = [];

  Future<void> readLocalJson()async{ // this function load local json data. To woring list
    final response = await rootBundle.loadString('json/info.json');
    final data = await jsonDecode(response);
    setState(() {
      info = data;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readLocalJson(); // initially call to load data
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: color.AppColor.whitecolor,
      body: Container(
        padding: EdgeInsets.only(top: 30, left: 30, right: 30),
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

              child: OverflowBox( //very useful overflowBox to solve render overflow error
                maxWidth: MediaQuery.of(context).size.width, // design er width max width er beshi hoye gele aita use korle maxwidth er vitore niyte ashbe
                child: ListView.builder(shrinkWrap: true,
                  itemCount: info.length~/2, // i want entire data show 2 grid type horizontal

                  itemBuilder: (context, index) {  // if miss expanded show render overflow error
                    int a = 2*index; // 0,2,4,6
                    int b = 2*index+1; // 1,3,5,7
                  return Row(
                    children: [
                      Container(
                        height: 200,
                        width: 170,
                        padding: EdgeInsets.only(bottom: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(info[a]['img']),

                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3,
                              offset: Offset(5,5),
                              color: color.AppColor.gredientsecond.withOpacity(0.1)
                            ),
                            BoxShadow(
                              blurRadius: 3,
                              offset: Offset(-5,-5),
                              color: color.AppColor.gredientsecond.withOpacity(0.1)
                            ),
                          ]
                        ),
                        child: Center(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(info[a]['title'],style: TextStyle(fontSize: 20,color: Colors.blue),),
                          ),
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 170,
                        padding: EdgeInsets.only(bottom: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(info[b]['img']),

                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3,
                              offset: Offset(5,5),
                              color: color.AppColor.gredientsecond.withOpacity(0.1)
                            ),
                            BoxShadow(
                              blurRadius: 3,
                              offset: Offset(-5,-5),
                              color: color.AppColor.gredientsecond.withOpacity(0.1)
                            ),
                          ]
                        ),
                        child: Center(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(info[b]['title'],style: TextStyle(fontSize: 20,color: Colors.blue),),
                          ),
                        ),
                      ),
                    ],
                  );
                },),
              ),
            )
          ],
        ),
      ),
    );
  }
}
