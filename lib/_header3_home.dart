import 'package:flutter/material.dart';

import 'colors.dart' as color;

class header3_home extends StatelessWidget {
  const header3_home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 210,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            color.AppColor.gredientfirst,
            color.AppColor.gredientsecond,
          ], begin: Alignment.bottomLeft, end: Alignment.centerRight),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
            topRight: Radius.circular(80),
          ),
          boxShadow: [
            BoxShadow(
                offset: Offset(5,
                    10), // right(x) side 10 and bottom(y) side 10. -x left side and -y top side
                color: color.AppColor.gredientfirst.withOpacity(0.2),
                blurRadius: 20)
          ]),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 25, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Next Workout',
              style: TextStyle(fontSize: 16, color: color.AppColor.whitecolor),
            ),
            Text(
              'Legs Toning\nand Glutes Workout',
              style: TextStyle(fontSize: 25, color: color.AppColor.whitecolor),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.timer,
                      size: 20,
                      color: color.AppColor.whitecolor,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '60 min',
                      style: TextStyle(
                          fontSize: 15, color: color.AppColor.whitecolor),
                    )
                  ],
                ),
                Expanded(child: Container()),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        boxShadow: [
                          BoxShadow(
                              color: color.AppColor.gredientfirst,
                              blurRadius: 20,
                              offset: Offset(4, 8))
                        ]),
                    child: Icon(
                      Icons.play_circle_fill,
                      size: 60,
                      color: color.AppColor.whitecolor,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
