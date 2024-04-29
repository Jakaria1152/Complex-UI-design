import 'package:complex_ui_design/widget/exercise/head_part.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExercisePage extends StatelessWidget {
  const ExercisePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          headPart(),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 15,left: 10,right: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(80))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Circuit 1: Legs Toning',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
                      Row(
                        children: [
                          Icon(Icons.repeat,color: Colors.grey,),
                          Text('3 sets',style: TextStyle(color: Colors.grey),)
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}