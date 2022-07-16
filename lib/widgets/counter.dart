import 'package:flutter/material.dart';

import '../constants.dart';

class Counter extends StatelessWidget {
  final int number;
  final Color color;
  final String title;

  Counter({required this.number, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(6),
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            color: color.withOpacity(.26),
            shape: BoxShape.circle,
          ),
          child: Container(
            height: 11,
            width: 11,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
                border: Border.all(color: color, width: 2)),
          ),
        ),
        Text(
          number.toString(),
          style: TextStyle(fontSize: 30, color: color),
        ),
        Text(
          title,
          style: kSubTextStyle,
        )
      ],
    );
  }
}
