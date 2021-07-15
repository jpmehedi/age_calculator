
import 'package:flutter/material.dart';


class AppName extends StatelessWidget {
  const AppName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(left: 20),
            child: Text("Age Calculator", 
              style: TextStyle(
              fontSize: 28, 
              fontWeight: FontWeight.w700, 
              fontFamily: 'roboto', 
              color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}