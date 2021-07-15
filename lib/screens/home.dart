import 'package:age_calculator/constant/color.dart';
import 'package:age_calculator/screens/result.dart';
import 'package:age_calculator/widget/app_name.dart';
import 'package:age_calculator/widget/custom_bottom_paint.dart';
import 'package:age_calculator/widget/custom_large_button.dart';
import 'package:age_calculator/widget/custom_top_paint.dart';
import 'package:age_calculator/widget/date_picker_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Stack(
                children: [
                  CustomPaint(
                    size: Size(width, (350 * 0.31473214285714285).toDouble()), 
                    painter: CustomTopPaint(),
                  ),
                  Positioned(
                    top: 30,
                    child: AppName()
                  )
                ],
              ),
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Discover exactly how old you are and how many days there are until your next birthday.',
                style: TextStyle(
                  fontSize: 18, 
                  height: 1.5,
                  fontWeight: FontWeight.w400, 
                  fontFamily: 'roboto', 
                  color: textColor ,
                ),
              ),
            ),
            Spacer(),
            Container(
              child: SvgPicture.asset(
                "assets/gift.svg",
                width: 120,
                height: 120,
                semanticsLabel: 'Acme Logo'
              ),
            ),
            Spacer(),
            DatePickerField(
              level: 'Select your date of birth',
              onTap: (){},
              hintText: "DD-MM-YYYY",
            ),
            SizedBox(height: 10,),
            DatePickerField(
              level: 'Select age at the date of',
              onTap: (){},
              hintText: "DD-MM-YYYY",
            ),
            Container(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: CustomPaint(
                      size: Size(width, (600 * 0.31473214285714285).toDouble()), 
                      painter: CustomBottomPaint(),
                    ),
                  ),
                  Positioned(
                    top: 80,
                    child: CustomLargeButton(
                      buttonLevel: "Calculate",
                      onPressed: (){
                        Route route = MaterialPageRoute(builder: (context)=>ResultPage());
                        Navigator.push(context, route);
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

