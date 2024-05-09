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
          Container(

            padding: EdgeInsets.only(top: 15,left: 10,right: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.only(topRight: Radius.circular(80))),
            child: Row(
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
            ),
          ),

          Expanded(child: MediaQuery.removePadding(
            removeTop: true,
            context: context,
            child: ListView.builder(itemCount: 10,shrinkWrap: true, itemBuilder: (context, index) {
              return Container(
                color: Colors.white,
                child: Column(
                  children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(8),
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black,width: 1.2),
                        image: DecorationImage(
                          image: AssetImage('assets/img/ex6.png')
                        ),

                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Icon(Icons.play_circle,size: 38,color: Colors.pink,),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Squat and Walk',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                          SizedBox(height: 20,),
                          Text('46 second',style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                    )
                  ],
                )
                  ],
                ),
              );
            },),
          ))
        ],
      ),
    );
  }
}
