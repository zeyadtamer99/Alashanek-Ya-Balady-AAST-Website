import 'package:ayb_database/Mobile/AboutUsMobile.dart';
import 'package:ayb_database/Website/AboutUsWebsite.dart';
import 'package:ayb_database/Website/MainMenuWebsite.dart';
import 'package:ayb_database/Widgets/app_bar_website.dart';
import 'package:flutter/material.dart';

import 'Widgets/app_bar_mobile.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth < 600) {
      return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(screenHeight * 0.06),
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 600) {
                return MyAppBarMobile(choose: 1);
              } else if (constraints.maxWidth > 600 &&
                  constraints.maxWidth < 900) {
                return MyAppBarWebsite(choose: 1);
              } else {
                return MyAppBarWebsite(choose: 1);
              }
            },
          ),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return AboutUsMobile();
            } else if (constraints.maxWidth > 600 &&
                constraints.maxWidth < 900) {
              return AboutUsWebsite();
            } else {
              return AboutUsWebsite();
            }
          },
        ),
      );
    } else {
      return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(screenHeight * 0.11),
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 600) {
                return MyAppBarMobile(choose: 1);
              } else if (constraints.maxWidth > 600 &&
                  constraints.maxWidth < 900) {
                return MyAppBarWebsite(choose: 1);
              } else {
                return MyAppBarWebsite(choose: 1);
              }
            },
          ),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return AboutUsMobile();
            } else if (constraints.maxWidth > 600 &&
                constraints.maxWidth < 900) {
              return AboutUsWebsite();
            } else {
              return AboutUsWebsite();
            }
          },
        ),
      );
    }
  }
}
