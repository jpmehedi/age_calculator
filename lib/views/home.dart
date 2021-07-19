import 'package:age_calculator/constant/color.dart';
import 'package:age_calculator/global/helper_function.dart';
import 'package:age_calculator/global/utils.dart';
import 'package:age_calculator/views/result.dart';
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
              level: 'Select date of birth',
              onTap: ()=> _selectDate(context, selectedBithDate, "BirthDate" ),
              hintText: "${getFormatedDate(selectedBithDate)}",
            ),
            SizedBox(height: 10,),
            DatePickerField(
              level: 'Select today\'s date',
              onTap: ()=> _selectDate(context, selectedCurrentDate, "CurrentDate"),
              hintText: "${getFormatedDate(selectedCurrentDate)}",
            ),
            Container(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: CustomPaint(
                      size: Size(width, (399 * 0.31473214285714285).toDouble()), 
                      painter: CustomBottomPaint(),
                    ),
                  ),
                  Positioned(
                    top: 40,
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

  //This function used for open date picker 
  Future<void> _selectDate(BuildContext context, DateTime initialDate, String from) async {
    if(from == 'BirthDate') {
       final DateTime? pickedBirthDate = await showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: DateTime(1900),
        lastDate: DateTime(2101),
      );
      if (pickedBirthDate != null && pickedBirthDate != selectedBithDate)
      setState(() {
        selectedBithDate = pickedBirthDate;
      });
    } 
    if(from == "CurrentDate"){
      final DateTime? pickedCurrentDate = await showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: DateTime(1900),
        lastDate: DateTime(2101),
      );

      if (pickedCurrentDate != null && pickedCurrentDate != selectedCurrentDate)
      setState(() {
        selectedCurrentDate = pickedCurrentDate;
      });
    }

  }
}





