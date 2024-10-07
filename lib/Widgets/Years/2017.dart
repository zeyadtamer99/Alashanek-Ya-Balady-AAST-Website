
import 'package:flutter/material.dart';

class TwentySeventeen extends StatelessWidget {
  double width;
  double height;
  TwentySeventeen({
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: width * 0.5,
              height: height,
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "In 2017, a wonderful opportunity was provided for the children of Bolaq families to visit the pyramids of Giza, one of the most beautiful and historic sites in Egypt. This trip aimed to instill a love for their country and heritage in these children. In addition to this, Ramadan bags filled with food and supplies were distributed to those in need, bringing a little bit of joy and comfort to their lives. It is through such acts of kindness and generosity that we can help make a difference in the lives of those less fortunate and bring a smile to their faces.",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: width * 0.1,
            ),
            Container(
              width: width * 0.7,
              height: height,
              child: Stack(
                children: [
                  Positioned(
                    child: Image.asset(
                      'assets/images/shapes/shape5.png',
                      fit: BoxFit.cover,
                      width: width,
                      height: height,
                    ),
                  ),
                  Positioned(
                    top: height * 0.1,
                    left: width * 0.1,
                    child: Image.asset(
                      'assets/images/2017/pyramids.jpg',
                      fit: BoxFit.cover,
                      width: width * 0.3,
                      height: height *0.8,
                    ),
                  ),
                  Positioned(
                    top: height * 0.05,
                    right: width * 0.0,
                    child: Image.asset(
                      'assets/images/2017/pyramids(1).jpg',
                      fit: BoxFit.cover,
                      width: width * 0.35,
                      height: height * 0.5,
                    ),
                  ),
                  Positioned(
                    bottom: height * 0.01,
                    right: width * 0.05,
                    child: Image.asset(
                      'assets/images/2017/ramadan2017.jpg',
                      fit: BoxFit.cover,
                      width: width * 0.35,
                      height: height * 0.5,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
