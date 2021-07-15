
import 'package:age_calculator/constant/color.dart';
import 'package:flutter/material.dart';


class CustomLargeButton extends StatelessWidget {
  final String? buttonLevel;
  final VoidCallback? onPressed;

  const CustomLargeButton({
    Key? key,
    this.buttonLevel, 
    this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 56,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor:  MaterialStateProperty.all<Color>(secondaryColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(                  
              borderRadius: BorderRadius.circular(10.0),
            )
          )
        ),
        child: Text(
          "$buttonLevel",
           style: TextStyle(
            fontSize: 24, 
            fontWeight: FontWeight.w500, 
            fontFamily: 'roboto', 
            color: Colors.white,
           ),
          ),
        ),
    );
  }
}