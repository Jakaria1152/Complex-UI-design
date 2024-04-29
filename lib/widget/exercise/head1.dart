import 'package:flutter/material.dart';

class head1 extends StatelessWidget {
  const head1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
        Icon(
          Icons.more_time_sharp,
          color: Colors.white,
        )
      ],
    );
  }
}
