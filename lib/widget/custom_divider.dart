import 'package:age_calculator/constant/color.dart';
import 'package:flutter/material.dart';


class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 100,
      color: textColor,
      width: 1,
    );
  }
}
