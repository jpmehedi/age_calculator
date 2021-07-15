
import 'package:age_calculator/constant/color.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {

  final String? leading;
  final String? trailing;

  const CustomListTile({
    Key? key,
    this.leading,
    this.trailing
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("$leading", style: TextStyle(
            fontSize: 18,
            color: textColor,
            fontWeight: FontWeight.normal
          ),),
          Text("$trailing",style: TextStyle(
            fontSize: 18,
            color: textColor,
            fontWeight: FontWeight.bold
          ),
        )
        ],
      ),
    );
  }
}