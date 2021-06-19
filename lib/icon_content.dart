import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  final IconData IconName;
  final String Gender;
  IconContent(this.IconName, this.Gender);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          IconName,
          size: 80.0,
        ),
        Text(
          Gender,
          style: kLabelTextStyle
        ),
      ],
    );
  }
}