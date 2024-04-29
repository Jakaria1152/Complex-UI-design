import 'package:complex_ui_design/widget/exercise/head1.dart';
import 'package:complex_ui_design/widget/exercise/row_design_timer.dart';
import 'package:flutter/material.dart';

class headPart extends StatelessWidget {
  const headPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
      child: Column(
        children: [
          head1(),
          SizedBox(
            height: 20,
          ),
          Text(
            'Legs Toning\nand Glutes Workout',
            style: Theme.of(context)
                .textTheme
                .displaySmall
                ?.copyWith(color: Colors.white),
          ),
          SizedBox(
            height: 40,
          ),
          row_design_timer(),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
