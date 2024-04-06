import 'package:flutter/material.dart';
class header2_home extends StatelessWidget {
  const header2_home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Your Program',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ),
        Expanded(child: Container()),
        Text(
          'Details',
          style: TextStyle(fontSize: 18, color: Colors.blue),
        ),
        SizedBox(
          width: 5,
        ),
        Icon(
          Icons.arrow_forward,
          size: 20,
        )
      ],
    );
  }
}
