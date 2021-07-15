

import 'package:age_calculator/constant/color.dart';
import 'package:age_calculator/widget/app_name.dart';
import 'package:age_calculator/widget/custom_bottom_paint.dart';
import 'package:age_calculator/widget/custom_divider.dart';
import 'package:age_calculator/widget/custom_large_button.dart';
import 'package:age_calculator/widget/custom_list_tile.dart';
import 'package:age_calculator/widget/custom_top_paint.dart';
import 'package:age_calculator/widget/summary_card_builder.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({ Key? key }) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {

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
                    size: Size(width, (350*0.31473214285714285).toDouble()), 
                    painter: CustomTopPaint(),
                  ),
                  Positioned(
                    top: 30,
                    child: AppName(),
                  )
                ],
              ),
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  CustomListTile(
                    leading: "Date of birth",
                    trailing: "19 Jun, 2019",
                  ),
                  SizedBox(height: 20,),
                  CustomListTile(
                    leading: "Todays",
                    trailing: "19 Jun, 2021",
                  ),
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
                  CustomDivider(),
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
                      size: Size(width, (600*0.31473214285714285).toDouble()), 
                      painter: CustomBottomPaint(),
                    ),
                  ),
                  Positioned(
                    top: 80,
                    child: CustomLargeButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      buttonLevel: "Re-calculate",
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







