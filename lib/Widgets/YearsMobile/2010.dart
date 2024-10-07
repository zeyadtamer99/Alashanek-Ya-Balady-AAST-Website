import 'package:flutter/material.dart';

class TwentyTenMobile extends StatelessWidget {
  double width;
  double height;
  TwentyTenMobile({
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
              height: height*0.8,
              child: Stack(
                children: [
                   Positioned(
                    child: Image.asset(
                      'assets/images/shapes/shape4.png',
                      fit: BoxFit.cover,
                      width: width*5,
                      height: height*6,
                    ),
                  ),
                  Positioned(
                    top: height * 0.05,
                    left: width * 0.1,
                    child: Image.asset(
                      'assets/images/2010/first_pic.jpg',
                      fit: BoxFit.cover,
                      width: width * 0.8,
                      height: height * 0.4,
                    ),
                  ),
                  Positioned(
                    bottom: height * 0.05,
                    right: width * 0.02,
                    child: Image.asset(
                      'assets/images/2010/masjed.jpg',
                      fit: BoxFit.cover,
                      width: width * 0.8,
                      height: height * 0.4,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: height*0.1,),
            Container(
              width: width ,
              height: height,
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "It all started in 2010 when a group of students in AAST decided to start the journey, and after 2 years of hardwork and dedication it started to pay-off. As Omar Alaa said: ",
                      style: TextStyle(
                        fontSize: (height/width)*10,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height:  height*0.01,
                    ),
                    Text(
                      '، المفرح إن المسجد ده من سنة و نص بظبط كان عبارة مخزن كراكيب و محدش بيصلى فيه ، و شباب و بنات علشانك يا بلدى راحوا عملوله إعمار و فرشوا سحاجيد و دهنهوا الحيطان و شالوا اللى فيه و ركبوا نور و سماعات ...طول منا قاعد و أنا بتخيل الثواب اللى بياخده كل واحد فى المكان ده كل يوم من حاجة زى دى .... شغلنا عداد حسانات مفتوح',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize:  (height/width)*10,
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
