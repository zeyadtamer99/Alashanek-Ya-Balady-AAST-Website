import 'package:ayb_database/Widgets/BottomPart.dart';
import 'package:ayb_database/Widgets/BottomPartMobile.dart';
import 'package:ayb_database/Widgets/Years/2010.dart';
import 'package:ayb_database/Widgets/Years/2014.dart';
import 'package:ayb_database/Widgets/Years/2016.dart';
import 'package:ayb_database/Widgets/Years/2017.dart';
import 'package:ayb_database/Widgets/Years/2019.dart';
import 'package:ayb_database/Widgets/YearsMobile/2010.dart';
import 'package:ayb_database/Widgets/YearsMobile/2014.dart';
import 'package:ayb_database/Widgets/YearsMobile/2017.dart';
import 'package:ayb_database/Widgets/YearsMobile/2019.dart';
import 'package:flutter/material.dart';

import '../Widgets/YearsMobile/2016.dart';

class AboutUsMobile extends StatefulWidget {
  const AboutUsMobile({super.key});

  @override
  State<AboutUsMobile> createState() => _AboutUsMobileState();
}

class _AboutUsMobileState extends State<AboutUsMobile> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      height: screenHeight,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: screenWidth,
              height: screenHeight * 0.15,
              child: 
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Our History",
                      style: TextStyle(color: Colors.black, fontSize: (screenHeight/screenWidth)*25),
                    ),
                    SizedBox(
                      height: screenHeight*0.005,
                    ),
                    Container(
                      width: screenWidth * 0.25,
                      height: 2,
                      decoration: BoxDecoration(
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //Title Our History
            Container(
              width: screenWidth*1.1,
              height: screenHeight *1.2,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TwentyTenMobile(
                    width: screenWidth * 0.9,
                    height: screenHeight * 0.8,
                  ),
                ],
              ),
            ),
            //Beginning
            SizedBox(height: screenHeight*0.1,),
            Container(
              width: screenWidth * 0.9,
              height: screenHeight * 1.2,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TwentyFourteenMobile(
                    width: screenWidth * 0.9,
                    height: screenHeight * 0.8,
                  ),
                ],
              ),
            ),
            //2014
            Container(
              width: screenWidth * 0.9,
              height: screenHeight * 1.2,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TwentySixteenMobile(
                    width: screenWidth * 0.8,
                    height: screenHeight * 0.8,
                  ),
                ],
              ),
            ),
            //2016
            SizedBox(
              height: screenHeight*0.3,
            ),

            Container(
              width: screenWidth * 0.8,
              height: screenHeight * 0.8,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TwentySeventeenMobile(
                    width: screenWidth * 0.8,
                    height: screenHeight * 0.7,
                  ),
                ],
              ),
            ),
            //2017
            SizedBox(
              height: screenHeight * 0.4,
            ),
            Container(
              width: screenWidth * 0.8,
              height: screenHeight * 0.8,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TwentyNineteenMobile(
                    width: screenWidth * 0.8,
                    height: screenHeight * 0.7,
                  ),
                ],
              ),
            ),
            //2019

            SizedBox(
              height: screenHeight * 0.8,
            ),

            BottomPartMobile(screenHeight: screenHeight)
          ],
        ),
      ),
    );
  }
}
