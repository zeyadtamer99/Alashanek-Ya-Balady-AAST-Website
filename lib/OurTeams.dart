import 'package:ayb_database/Mobile/OurTeamsMobile.dart';
import 'package:ayb_database/Website/AboutUsWebsite.dart';
import 'package:ayb_database/Website/MainMenuWebsite.dart';
import 'package:ayb_database/Website/OurTeamsWebsite.dart';
import 'package:ayb_database/Widgets/app_bar_website.dart';
import 'package:flutter/material.dart';

import 'Website/DonationWebsite.dart';
import 'Widgets/app_bar_mobile.dart';

class OurTeams extends StatefulWidget {
  const OurTeams({Key? key}) : super(key: key);

  @override
  State<OurTeams> createState() => _OurTeamsState();
}

class _OurTeamsState extends State<OurTeams> {
  @override
  Widget build(BuildContext context) {
    double screenHeight=MediaQuery.of(context).size.height;
    double screenWidth=MediaQuery.of(context).size.width;

    if (screenWidth < 600) {
      return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(screenHeight*0.06),
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 600) {
                return MyAppBarMobile(choose: 2);
              } else if (constraints.maxWidth > 600 &&
                  constraints.maxWidth < 900) {
                return MyAppBarWebsite(choose: 2);
              } else {
                return MyAppBarWebsite(choose: 2);
              }
            },
          ),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return  OurTeamsMobile();
            } else if (constraints.maxWidth > 600 && constraints.maxWidth < 900) {
              return    OurTeamsWebsite();
            } else {
              return   OurTeamsWebsite();
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
                return MyAppBarMobile(choose: 2);
              } else if (constraints.maxWidth > 600 &&
                  constraints.maxWidth < 900) {
                return MyAppBarWebsite(choose: 2);
              } else {
                return MyAppBarWebsite(choose: 2);
              }
            },
          ),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return  OurTeamsMobile();
            } else if (constraints.maxWidth > 600 && constraints.maxWidth < 900) {
              return    OurTeamsWebsite();
            } else {
              return   OurTeamsWebsite();
            }
          },
        ),


      );
    }

  }
}
