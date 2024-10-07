import 'package:flutter/material.dart';

class TwentySixteenMobile extends StatelessWidget {
  double width;
  double height;
  TwentySixteenMobile({
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
           width: width,
           height: height*0.9,
           child: Stack(
             children: [
               Positioned(
                 child: Image.asset(
                   'assets/images/shapes/shape3.png',
                   fit: BoxFit.cover,
                   width: width*3,
                   height: height*3,
                 ),
               ),
               Positioned(
                 top: height * 0.05,
                 child: Image.asset(
                   'assets/images/2016/keswa2016.jpg',
                   fit: BoxFit.cover,
                   width: width * 0.9,
                   height: height * 0.35,
                 ),
               ),
               Positioned(
                 bottom: height * 0.1,
                 right: width * 0,
                 child: Image.asset(
                   'assets/images/2016/keswa2016(2).jpg',
                   fit: BoxFit.cover,
                   width: width * 0.8,
                   height: height * 0.5,
                 ),
               ),
               Positioned(
                 bottom: height * 0.1,
                 left: width * 0.001,
                 child: Image.asset(
                   'assets/images/2016/keswa2016(1).jpg',
                   fit: BoxFit.cover,
                   width: width * 0.8,
                   height: height * 0.3,
                 ),
               ),
             ],
           ),
         ),
        SizedBox(
          height: height * 0.05,
         ),
         Container(
           width: width*1,
           height: height*0.8,
           child: Expanded(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               children: const [
                 Text(
                   "In 2016, a truly impactful and heartwarming event called 'Keswa'. The event was organized with the sole aim of providing clothing to our families in Bolaq who were in need. The 'Keswa' event enabled the families to pick out clothes that they needed, and it was truly an amazing experience to see the joy and happiness on their faces. The act of providing clothing to those who are less fortunate is a deeply charitable and selfless act. The 'Keswa' event was a symbol of hope and kindness, and it goes to show that a small act of kindness can go a long way in making a difference in people's lives. The initiative brought a sense of community and togetherness, and it is a testament to the fact that we can all make a difference in this world.",
                   style: TextStyle(
                     fontSize: 18,
                   ),
                   textAlign: TextAlign.center,
                 ),
               ],
             ),
           ),
         ),
      ],
    );
  }
}
