import 'package:flutter/material.dart';

class TwentySixteen extends StatelessWidget {
  double width;
  double height;
  TwentySixteen({
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
                      'assets/images/shapes/shape3.png',
                      fit: BoxFit.cover,
                      width: width*1.5,
                      height: height*1.5,
                    ),
                  ),
                  Positioned(
                    top: height * 0.05,
                    right: width * 0.05,
                    child: Image.asset(
                      'assets/images/2016/keswa2016.jpg',
                      fit: BoxFit.cover,
                      width: width * 0.4,
                      height: height * 0.35,
                    ),
                  ),
                  Positioned(
                    bottom: height * 0.3,
                    left: width * 0,
                    child: Image.asset(
                      'assets/images/2016/keswa2016(1).jpg',
                      fit: BoxFit.cover,
                      width: width * 0.35,
                      height: height * 0.5,
                    ),
                  ),
                  Positioned(
                    bottom: height * 0.05,
                    right: width * 0.05,
                    child: Image.asset(
                      'assets/images/2016/keswa2016(2).jpg',
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
                      "In 2016, a truly impactful and heartwarming event called 'Keswa'. The event was organized with the sole aim of providing clothing to our families in Bolaq who were in need. The 'Keswa' event enabled the families to pick out clothes that they needed, and it was truly an amazing experience to see the joy and happiness on their faces. The act of providing clothing to those who are less fortunate is a deeply charitable and selfless act. The 'Keswa' event was a symbol of hope and kindness, and it goes to show that a small act of kindness can go a long way in making a difference in people's lives. The initiative brought a sense of community and togetherness, and it is a testament to the fact that we can all make a difference in this world.",
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
