import 'package:flutter/material.dart';
class header1home extends StatelessWidget {
  const header1home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Training',
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.w700),
        ),
        Expanded(
            child:
                Container()), // aita dile majhe full space a niye nibe. baki element gulo dui dike cole jabe. very useful
        Icon(
          Icons.arrow_back_ios,
          size: 20,
        ),
        SizedBox(
          width: 10,
        ),
        Icon(
          Icons.calendar_today,
          size: 20,
        ),
        SizedBox(
          width: 15,
        ),
        Icon(
          Icons.arrow_forward_ios,
          size: 20,
        ),
      ],
    );
  }
}
