import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomPartMobile extends StatelessWidget {
  double screenHeight;
  BottomPartMobile({required this.screenHeight, super.key});

  @override
  Widget build(BuildContext context) {
    final String aboutUsData =
        "Alashanak Ya Baladi Association for Sustainable Development was founded in 2002 by a group of university students, out of their belief that the solution to the problem of multidimensional poverty goes beyond charitable efforts.";
    double screenWidth=MediaQuery.of(context).size.width;

    return Container(
      height: screenHeight * 0.35,
      color: Colors.grey[800],
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'About Us',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontSize: screenHeight*0.03,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: screenHeight*0.001),
                      Text(
                        aboutUsData,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontSize: screenHeight*0.02,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: screenWidth*0.05),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Connect with us',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontSize: screenHeight*0.03,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          InkWell(
                            onTap: () async {
                              const url = 'https://www.facebook.com/AYB.AAST';
                              // ignore: deprecated_member_use
                              if (await canLaunch(url)) {
                                // ignore: deprecated_member_use
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                              // Open social media link
                            },
                            child: Image.asset(
                              'assets/images/social_media/facebook.png',
                              width: (screenHeight/screenWidth)*18,
                              height: (screenHeight/screenWidth)*18,
                            ),
                          ),
                          SizedBox(width: screenWidth*0.04),
                          InkWell(
                            onTap: () async {
                              const url = 'https://www.instagram.com/ayb_aast/';
                              // ignore: deprecated_member_use
                              if (await canLaunch(url)) {
                                // ignore: deprecated_member_use
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                              // Open social media link
                            },
                            child: Image.asset(
                              'assets/images/social_media/instagram.png',
                              width: (screenHeight/screenWidth)*18,
                              height: (screenHeight/screenWidth)*18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: screenWidth*0.05),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Contact Us',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontSize: screenHeight*0.03,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Address:\nAAST (Sheraton Branch)\n',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontSize: screenHeight*0.02,
                        ),
                      ),
                      Text(
                        'Phone:\n+201029298885\n',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontSize: screenHeight*0.02,
                        ),
                      ),
                      Text(
                        'Email:\naastayb@gmail.com',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontSize: screenHeight*0.02,
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight*0.01),
            Text(
              '© 2023 Website. All rights reserved.',
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.white,
                fontSize: screenHeight*0.02,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
