import 'package:flutter/material.dart';

class TwentyFourteen extends StatelessWidget {
  double width;
  double height;
  TwentyFourteen({
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
                      "In 2014, the NGO had a significant year, marking the beginning of several impactful initiatives. They launched a blanket distribution event, providing warmth and comfort to our families in Bolaq. Additionally, they distributed Ramadan bags filled with essential food items, furthering their mission to alleviate hunger in the community. Most notably, they started their first medical convoy, providing healthcare services and assistance to underserved communities. These initiatives demonstrate the NGO's dedication to making a positive impact and improving the lives of those in need.",
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
                      'assets/images/shapes/shape1.png',
                      fit: BoxFit.cover,
                      width: width,
                      height: height,
                    ),
                  ),
                  Positioned(
                    top: height * 0.05,
                    left: width * 0.05,
                    child: Image.asset(
                      'assets/images/2014/btateen2014.jpg',
                      fit: BoxFit.cover,
                      width: width * 0.35,
                      height: height * 0.3,
                    ),
                  ),
                  Positioned(
                    bottom: height * 0.3,
                    right: width * 0.02,
                    child: Image.asset(
                      'assets/images/2014/qafla2014.jpg',
                      fit: BoxFit.cover,
                      width: width * 0.35,
                      height: height * 0.5,
                    ),
                  ),
                  Positioned(
                    bottom: height * 0.1,
                    left: width * 0.05,
                    child: Image.asset(
                      'assets/images/2014/ramadan2014.jpg',
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
