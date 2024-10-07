import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomPart extends StatelessWidget {
  double screenHeight;
  BottomPart({required this.screenHeight, super.key});

  @override
  Widget build(BuildContext context) {
    final String aboutUsData =
        "Alashanak Ya Baladi Association for Sustainable Development was founded in 2002 by a group of university students, out of their belief that the solution to the problem of multidimensional poverty goes beyond charitable efforts. The founders' conviction that community development is built on the foundations of improving the standard of living in a sustainable manner, achieving economic and social inclusion, youth participation, and women's empowerment.";

    return Container(
      height: screenHeight * 0.35,
      color: Colors.grey[800],
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 48),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      aboutUsData,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 24),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Connect with us',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontSize: 18,
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
                            width: 32,
                            height: 32,
                          ),
                        ),
                        SizedBox(width: 8),
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
                            width: 32,
                            height: 32,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Contact Us',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Address: AAST (Sheraton Branch)',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Phone: +201029298885',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Email: aastayb@gmail.com',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 24),
          Text(
            '© 2023 Website. All rights reserved.',
            style: TextStyle(
              decoration: TextDecoration.none,
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
