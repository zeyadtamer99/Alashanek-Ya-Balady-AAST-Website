import 'package:ayb_database/Widgets/BottomPart.dart';
import 'package:ayb_database/Widgets/BottomPartMobile.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Widgets/Cards/DonationCard.dart';
import '../Widgets/Cards/DonationCardMobile.dart';

class DonationMobile extends StatefulWidget {
  @override
  _DonationMobileState createState() => _DonationMobileState();
}

class _DonationMobileState extends State<DonationMobile> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    List<DonationCardMobile> donationCards = [
      DonationCardMobile(
        image: 'assets/images/donation/vodafone.png',
        title: 'Vodafone Cash',
        description:
            'You can donate easily and securely through Vodafone Cash by calling us at 01011228972. Our representative will guide you through the process from your phone, allowing you to contribute from the comfort of your own home.',
        height: screenHeight,
        width: screenWidth,
      ),
      DonationCardMobile(
        image: 'assets/images/donation/telda.png',
        title: 'Telda',
        description:
            'To send your donation using Telda, please call us at 01029298885 and one of our representatives will provide you with our Telda account information. You can then send your donation directly to our Telda account from the convenience of your own home.',
        height: screenHeight,
        width: screenWidth,
      ),
      DonationCardMobile(
        image: 'assets/images/donation/cash.png',
        title: 'Cash',
        description:
            'If you call us at 01029298885, one of our representatives will be happy to answer your call and help you with your donation. We can collect your donation from the nearest point or even from your home for your convenience.',
        height: screenHeight,
        width: screenWidth,
      ),
    ];
    return Container(
      width: screenWidth,
      height: screenHeight,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Thank you for your generous donation! We kindly request that you contact us within one week to let us know for which charitable cause you donated. This will help us ensure that your donation is directed to the cause you intended. If we do not hear from you within one week, we may direct your donation to another charitable reason. Thank you for your understanding.",
                      style: TextStyle(color: Colors.red,fontSize: (screenHeight/screenWidth)*8,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.05,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      donationCards[0],
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      donationCards[1],
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      donationCards[2],
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.05,
                  ),
                  GestureDetector(
                    onTap: () => launch('tel:+201029298885'),
                    child: Container(
                      height: screenHeight * 0.1,
                      width: screenWidth * 0.7,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.call,
                            color: Colors.white,
                          size: (screenHeight/screenWidth)*15,
                          ),
                          SizedBox(width: screenWidth*0.05),
                          Text(
                            'Call Us',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: (screenHeight/screenWidth)*15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.1,
            ),
            BottomPartMobile(screenHeight: screenHeight),
          ],
        ),
      ),
    );
  }
}
