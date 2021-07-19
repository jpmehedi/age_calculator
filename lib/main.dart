
import 'package:age_calculator/views/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constant/color.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color(0xff90dce2),
    statusBarIconBrightness: Brightness.light,
    statusBarBrightness: Brightness.dark
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: [
        const Locale('en', 'US'), // English
      ],
      debugShowCheckedModeBanner: false,
      title: 'Age Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.light(
          primary: primaryColor, // header background color
          onPrimary: textColor, // header text color
          onSurface: textColor, // body text color
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: secondaryColor, // button text color
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}
