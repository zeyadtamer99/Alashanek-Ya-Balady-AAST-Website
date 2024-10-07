import 'package:flutter/material.dart';

class TwentyNineteen extends StatelessWidget {
  double width;
  double height;
  TwentyNineteen({
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
              width: width * 0.7,
              height: height,
              child: Stack(
                children: [
                  Positioned(
                    child: Image.asset(
                      'assets/images/shapes/shape4.png',
                      fit: BoxFit.cover,
                      width: width*2,
                      height: height*2,
                    ),
                  ),
                  Positioned(
                    bottom: height * 0.5,
                    right: width * 0,
                    child: Image.asset(
                      'assets/images/2019/qafla.jpg',
                      fit: BoxFit.cover,
                      width: width * 0.35,
                      height: height * 0.5,
                    ),
                  ),
                 
                   Positioned(
                    top: height * 0.1,
                    left: width * 0.05,
                    child: Image.asset(
                      'assets/images/2019/kiss.jpg',
                      fit: BoxFit.cover,
                      width: width * 0.2,
                      height: height * 0.8,
                    ),
                  ),
                  Positioned(
                    bottom: height * 0.05,
                    right: width * 0.1,
                    child: Image.asset(
                      'assets/images/2019/packing.jpg',
                      fit: BoxFit.cover,
                      width: width * 0.35,
                      height: height * 0.5,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: width * 0.1,
            ),
            Container(
              width: width * 0.5,
              height: height,
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "In 2019, we had the opportunity to collaborate with other franchises for our annual Ramadan Bags packing. It was a wonderful experience to work together towards a common goal of providing essential supplies to those in need during the holy month. Through this collaboration, we were able to reach a wider audience and make an even greater impact in our community. In addition to the Ramadan Bags packing, we also joined forces with other universities for a Medical Convoy. The collaboration allowed us to bring medical care and services to even more people in underserved areas, demonstrating the power of working together towards a greater cause. We believe that collaboration is key in achieving our mission to help those in need and create positive change in our community.",
                      style: TextStyle(
                        fontSize: 20,
                      ),
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
