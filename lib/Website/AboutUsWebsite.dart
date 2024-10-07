import 'package:ayb_database/Widgets/BottomPart.dart';
import 'package:ayb_database/Widgets/Years/2010.dart';
import 'package:ayb_database/Widgets/Years/2014.dart';
import 'package:ayb_database/Widgets/Years/2016.dart';
import 'package:ayb_database/Widgets/Years/2017.dart';
import 'package:ayb_database/Widgets/Years/2019.dart';
import 'package:flutter/material.dart';

class AboutUsWebsite extends StatefulWidget {
  const AboutUsWebsite({super.key});

  @override
  State<AboutUsWebsite> createState() => _AboutUsWebsiteState();
}

class _AboutUsWebsiteState extends State<AboutUsWebsite> {
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
              height: screenHeight * 0.3,
              child: 
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Our History",
                      style: TextStyle(color: Colors.black, fontSize: 62),
                    ),
                    SizedBox(
                      height: 3,
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
              width: screenWidth * 0.8,
              height: screenHeight * 0.8,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TwentyTen(
                    width: screenWidth * 0.6,
                    height: screenHeight * 0.8,
                  ),
                ],
              ),
            ),
            //Beginning
            SizedBox(
              height: screenHeight * 0.1,
            ),

            Container(
              width: screenWidth * 0.8,
              height: screenHeight * 0.8,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TwentyFourteen(
                    width: screenWidth * 0.6,
                    height: screenHeight * 0.7,
                  ),
                ],
              ),
            ),
            //2014
            SizedBox(
              height: screenHeight * 0.1,
            ),

            Container(
              width: screenWidth * 0.8,
              height: screenHeight * 0.8,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TwentySixteen(
                    width: screenWidth * 0.6,
                    height: screenHeight * 0.8,
                  ),
                ],
              ),
            ),
            //2016
            SizedBox(
              height: screenHeight * 0.1,
            ),

            Container(
              width: screenWidth * 0.8,
              height: screenHeight * 0.8,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TwentySeventeen(
                    width: screenWidth * 0.6,
                    height: screenHeight * 0.7,
                  ),
                ],
              ),
            ),
            //2017
            SizedBox(
              height: screenHeight * 0.1,
            ),
            Container(
              width: screenWidth * 0.8,
              height: screenHeight * 0.8,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TwentyNineteen(
                    width: screenWidth * 0.6,
                    height: screenHeight * 0.7,
                  ),
                ],
              ),
            ),
            //2019

            SizedBox(
              height: screenHeight * 0.15,
            ),

            BottomPart(screenHeight: screenHeight)
          ],
        ),
      ),
    );
  }
}
