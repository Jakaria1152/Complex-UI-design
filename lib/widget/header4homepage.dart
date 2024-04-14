import 'package:flutter/material.dart';

import '../colors.dart' as color;

class header4homepage extends StatelessWidget {
  const header4homepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      height: 130,
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
                    fit: BoxFit
                        .fill // fill dile image nosto na kore total height and width nibe
                    ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 40,
                    offset: Offset(8, 10),
                    color: color.AppColor.gredientsecond.withOpacity(0.3),
                  ),
                  BoxShadow(
                    blurRadius: 20,
                    offset: Offset(-1, -5),
                    color: color.AppColor.gredientsecond.withOpacity(0.3),
                  ),
                ]),
          ),
          Container(
            height: 110,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(right: 200, bottom: 30),
            decoration: BoxDecoration(
              color: Colors.redAccent.withOpacity(0.4),
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage("assets/img/boy run.jpg"),
                  fit: BoxFit
                      .fill // fill dile image nosto na kore total height and width nibe
                  ),
            ),
          ),
          Container(
            height: 100,
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 105, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'You are doing great',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.blue),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'You are doing great',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'stick to your plan',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
