import 'package:flutter/material.dart';

class TwentySeventeenMobile extends StatelessWidget {
  double width;
  double height;
  TwentySeventeenMobile({
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              width: width,
              height: height*0.7,
              child: Stack(
                children: [
                  Positioned(
                    child: Image.asset(
                      'assets/images/shapes/shape5.png',
                      fit: BoxFit.cover,
                      width: width*1.2,
                      height: height*1.2,
                    ),
                  ),
                  Positioned(
                    top: height * 0.05,
                    left: width * 0.05,
                    child: Image.asset(
                      'assets/images/2017/ramadan2017.jpg',
                      fit: BoxFit.cover,
                      width: width * 0.6,
                      height: height * 0.3,
                    ),
                  ),
                  Positioned(
                    bottom: height * 0.3,
                    right: width * 0.02,
                    child: Image.asset(
                      'assets/images/2017/pyramids.jpg',
                      fit: BoxFit.cover,
                      width: width * 0.3,
                      height: height * 0.5,
                    ),
                  ),
                  Positioned(
                    bottom: height * 0.0001,
                    left: width * 0.075,
                    child: Image.asset(
                      'assets/images/2017/pyramids(1).jpg',
                      fit: BoxFit.cover,
                      width: width * 0.9,
                      height: height * 0.4,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            Container(
              width: width*1,
              height: height*0.8,
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "In 2017, a wonderful opportunity was provided for the children of Bolaq families to visit the pyramids of Giza, one of the most beautiful and historic sites in Egypt. This trip aimed to instill a love for their country and heritage in these children. In addition to this, Ramadan bags filled with food and supplies were distributed to those in need, bringing a little bit of joy and comfort to their lives. It is through such acts of kindness and generosity that we can help make a difference in the lives of those less fortunate and bring a smile to their faces.",
                      style: TextStyle(
                        fontSize:  (height/width)*10,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ],
    );
  }
}
