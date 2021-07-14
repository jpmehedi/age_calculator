import 'package:age_calculator/constant/color.dart';
import 'package:age_calculator/screens/result.dart';
import 'package:age_calculator/widget/custom_bottom_paint.dart';
import 'package:age_calculator/widget/custom_top_paint.dart';
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
    // ignore: non_constant_identifier_names
    final double WIDTH = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Stack(
                children: [
                  CustomPaint(
                    size: Size(WIDTH, (350*0.31473214285714285).toDouble()), 
                    painter: CustomTopPaint(),
                  ),
                  Positioned(
                    top: 30,
                    child: Container(
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
                              color: textColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Select your date of birth", 
                     style: TextStyle(
                      fontSize: 14, 
                      fontWeight: FontWeight.w500, 
                      fontFamily: 'roboto', 
                      color: textColor,
                    ),
                  ),
                  SizedBox(height: 10,),
                  InkWell(
                    onTap: () {
                      // _selectDate();   // Call Function that has showDatePicker()
                    },
                    child: IgnorePointer(
                      child: TextFormField(                   
                        decoration: InputDecoration(
                          hintText: 'DD-MM-YYYY',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4.0)),
                            borderSide: BorderSide(width: 1.0, color: textColor),
                          ),
                          suffixIcon: Icon(Icons.calendar_today)
                        ),
                        // onSaved: (String val) {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Select age at the date of", 
                     style: TextStyle(
                      fontSize: 14, 
                      fontWeight: FontWeight.w500, 
                      fontFamily: 'roboto', 
                      color: textColor,
                    ),
                  ),
                  SizedBox(height: 10,),
                  InkWell(
                    onTap: () {
                      // _selectDate();   // Call Function that has showDatePicker()
                    },
                    child: IgnorePointer(
                      child: TextFormField(                   
                        decoration: InputDecoration(
                          hintText: 'DD-MM-YYYY',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4.0)),
                            borderSide: BorderSide(width: 1.0, color: textColor),
                          ),
                          suffixIcon: Icon(Icons.calendar_today)
                        ),
                        // onSaved: (String val) {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
      
      

            Container(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: CustomPaint(
                      size: Size(WIDTH, (600*0.31473214285714285).toDouble()), 
                      painter: CustomBottomPaint(),
                    ),
                  ),
                  Positioned(
                    top: 80,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      height: 56,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        onPressed: (){
                          Route route = MaterialPageRoute(builder: (context)=>ResultPage());
                          Navigator.push(context, route);
                        }, 
                        style: ButtonStyle(
                          backgroundColor:  MaterialStateProperty.all<Color>(buttonColor),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(                  
                              borderRadius: BorderRadius.circular(10.0),
                            )
                          )
                        ),
                        child: Text("Calculate",
                           style: TextStyle(
                            fontSize: 24, 
                            fontWeight: FontWeight.w500, 
                            fontFamily: 'roboto', 
                            color: Colors.white,
                           ),
                          ),
                        ),
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