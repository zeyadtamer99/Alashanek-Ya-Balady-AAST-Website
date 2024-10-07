import 'package:ayb_database/Mobile/DonationMobile.dart';
import 'package:ayb_database/Website/AboutUsWebsite.dart';
import 'package:ayb_database/Website/MainMenuWebsite.dart';
import 'package:ayb_database/Widgets/app_bar_website.dart';
import 'package:flutter/material.dart';

import 'Website/DonationWebsite.dart';
import 'Widgets/app_bar_mobile.dart';

class Donation extends StatefulWidget {
  const Donation({Key? key}) : super(key: key);

  @override
  State<Donation> createState() => _DonationState();
}

class _DonationState extends State<Donation> {
  @override
  Widget build(BuildContext context) {
    double screenHeight=MediaQuery.of(context).size.height;

    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth < 600) {
      return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(screenHeight*0.06),
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 600) {
                return MyAppBarMobile(choose: 8);
              } else if (constraints.maxWidth > 600 &&
                  constraints.maxWidth < 900) {
                return MyAppBarWebsite(choose: 8);
              } else {
                return MyAppBarWebsite(choose: 8);
              }
            },
          ),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return  DonationMobile();
            } else if (constraints.maxWidth > 600 && constraints.maxWidth < 900) {
              return    DonationWebsite();
            } else {
              return   DonationWebsite();
            }
          },
        ),


      );
    } else {
      return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(screenHeight*0.11),
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 600) {
                return MyAppBarMobile(choose: 8);
              } else if (constraints.maxWidth > 600 &&
                  constraints.maxWidth < 900) {
                return MyAppBarWebsite(choose: 8);
              } else {
                return MyAppBarWebsite(choose: 8);
              }
            },
          ),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return  DonationMobile();
            } else if (constraints.maxWidth > 600 && constraints.maxWidth < 900) {
              return    DonationWebsite();
            } else {
              return   DonationWebsite();
            }
          },
        ),


      );
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight*0.06),
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return MyAppBarMobile(choose: 8);
            } else if (constraints.maxWidth > 600 &&
                constraints.maxWidth < 900) {
              return MyAppBarWebsite(choose: 8);
            } else {
              return MyAppBarWebsite(choose: 8);
            }
          },
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return  DonationMobile();
          } else if (constraints.maxWidth > 600 && constraints.maxWidth < 900) {
            return    DonationWebsite();
          } else {
            return   DonationWebsite();
          }
        },
      ),


    );

  }
}
