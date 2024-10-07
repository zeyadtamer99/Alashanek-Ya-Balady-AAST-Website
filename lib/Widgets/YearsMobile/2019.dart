import 'package:flutter/material.dart';

class TwentyNineteenMobile extends StatelessWidget {
  double width;
  double height;
  TwentyNineteenMobile({
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
                      'assets/images/shapes/shape4.png',
                      fit: BoxFit.cover,
                      width: width*1.2,
                      height: height*1.2,
                    ),
                  ),
                  Positioned(
                    top: height * 0.05,
                    left: width * 0.05,
                    child: Image.asset(
                      'assets/images/2019/packing.jpg',
                      fit: BoxFit.cover,
                      width: width * 0.6,
                      height: height * 0.3,
                    ),
                  ),
                  Positioned(
                    bottom: height * 0.2,
                    right: width * 0.02,
                    child: Image.asset(
                      'assets/images/2019/kiss.jpg',
                      fit: BoxFit.cover,
                      width: width * 0.3,
                      height: height * 0.5,
                    ),
                  ),
                  Positioned(
                    bottom: height * 0.0001,
                    left: width * 0.075,
                    child: Image.asset(
                      'assets/images/2019/qafla.jpg',
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
                      "In 2019, we had the opportunity to collaborate with other franchises for our annual Ramadan Bags packing. It was a wonderful experience to work together towards a common goal of providing essential supplies to those in need during the holy month. Through this collaboration, we were able to reach a wider audience and make an even greater impact in our community. In addition to the Ramadan Bags packing, we also joined forces with other universities for a Medical Convoy. The collaboration allowed us to bring medical care and services to even more people in underserved areas, demonstrating the power of working together towards a greater cause. We believe that collaboration is key in achieving our mission to help those in need and create positive change in our community.",
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
