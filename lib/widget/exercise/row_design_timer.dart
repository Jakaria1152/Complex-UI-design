import 'package:flutter/material.dart';

class row_design_timer extends StatelessWidget {
  const row_design_timer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 7),
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Icon(
                Icons.timer,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '68 minutes',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 7),
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Icon(
                Icons.timer,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '68 minutes',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ],
    );
  }
}
