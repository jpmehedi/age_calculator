

import 'package:age_calculator/constant/color.dart';
import 'package:age_calculator/widget/custom_bottom_paint.dart';
import 'package:age_calculator/widget/custom_top_paint.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({ Key? key }) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {

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
                  // Positioned(
                  //   top: 30,
                  //   child: Container(
                  //     padding: EdgeInsets.only(left: 10),
                  //     child: Row(
                  //       children: [
                  //         InkWell(
                  //           borderRadius: BorderRadius.circular(24),
                  //           onTap: (){
                  //             Navigator.pop(context);
                  //           }, 
                  //           child: Container(
                  //             width: 48,
                  //             height: 48,
                  //             decoration: BoxDecoration(
                  //               borderRadius: BorderRadius.circular(24)
                  //             ),
                  //             child: Icon(Icons.arrow_back_ios, color: textColor, ),
                  //           ),
                  //        ),
                  //        Text("Age Calculator", 
                  //         style: TextStyle(
                  //           fontSize: 28, 
                  //           fontWeight: FontWeight.w700,  
                  //           fontFamily: 'roboto', 
                  //           color: textColor,
                  //          ),
                  //         )
                  //       ],
                  //     ),
                  //   ),
                  // )
                ],
              ),
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Date of birth", style: TextStyle(
                          fontSize: 18,
                          color: textColor,
                          fontWeight: FontWeight.normal
                        ),),
                        Text("Jun 19, 1919",style: TextStyle(
                          fontSize: 18,
                          color: textColor,
                          fontWeight: FontWeight.bold
                        ),
                      )
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Today", style: TextStyle(
                          fontSize: 18,
                          color: textColor,
                          fontWeight: FontWeight.normal
                        ),),
                        Text("Jun 19, 1997",style: TextStyle(
                          fontSize: 18,
                          color: textColor,
                          fontWeight: FontWeight.bold
                        ),
                      )
                      ],
                    ),
                  )
                ],
              )
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(15),
              height: 120,
              decoration: BoxDecoration(
                color: Color(0xff90dce2),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Age"),
                          Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: '25 ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),),
                              TextSpan(
                                text: 'Years',
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                            ],
                           ),
                          ),
                          Text("5 Month | 21 Days"),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    height: 100,
                    color: textColor,
                    width: 1,
                  ),
                  Expanded(
                   child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Next Birthday"),
                          Text( 'Saturday ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),),
                          Text("5 Month | 21 Days"),
                        ],
                      ),
                    ),
                 )
                ],
              )
            ),
            Spacer(),

      
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xff90dce2),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                  Text("Summary", style: TextStyle(color: textColor, fontSize: 18, fontWeight: FontWeight.w700),),
                  SizedBox(height: 20,),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SummaryCardBuilder(
                                title: "Years",
                                subTitle: "28",
                              ),
                              SizedBox(height: 20,),
                              SummaryCardBuilder(
                                title: "Days",
                                subTitle: "24383",
                                fontSize: 14,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              SummaryCardBuilder(
                                title: "Months",
                                subTitle: "5",
                              ),
                              SizedBox(height: 20,),
                              SummaryCardBuilder(
                                title: "Hours",
                                subTitle: "1238",
                                fontSize: 14,
                              ),
                            ],
                          ),
                        ),
                         Container(
                          child: Column(
                            children: [
                              SummaryCardBuilder(
                                title: "Weeks",
                                subTitle: "3",
                              ),
                              SizedBox(height: 20,),
                              SummaryCardBuilder(
                                title: "Minutes",
                                subTitle: "34",
                                fontSize: 14,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
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
                          Navigator.pop(context);
                        }, 
                        style: ButtonStyle(
                          backgroundColor:  MaterialStateProperty.all<Color>(buttonColor),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(                  
                              borderRadius: BorderRadius.circular(10.0),
                            )
                          )
                        ),
                        child: Text("Re-Calculate",
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

class SummaryCardBuilder extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final double? fontSize;
  const SummaryCardBuilder({
    Key? key, this.title, this.subTitle, this.fontSize
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("$title",style: TextStyle(color: textColor, fontSize: 16, fontWeight: FontWeight.w500, height: 1.5)),
          Text("$subTitle",style: TextStyle(color: textColor, fontSize: fontSize ?? 20, fontWeight: FontWeight.bold, height: 1.5))
        ],
      ),
    );
  }
} 

