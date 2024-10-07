import 'package:ayb_database/Mobile/StreetsBolaqMobile.dart';
import 'package:ayb_database/Website/StreetsBolaqWebsite.dart';
import 'package:ayb_database/Widgets/app_bar_website.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'Widgets/app_bar_mobile.dart';

class StreetsBolaq extends StatefulWidget {
  bool access=false;

  StreetsBolaq({required this.access});


  @override
  State<StreetsBolaq> createState() => _StreetsBolaqState();
}

class _StreetsBolaqState extends State<StreetsBolaq> {
  @override
  Widget build(BuildContext context) {
    double screenHeight=MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth < 600) {
      return Scaffold(
        appBar: widget.access ? null:PreferredSize(
          preferredSize: Size.fromHeight(screenHeight*0.06),
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 600) {
                return MyAppBarMobile(choose: 4);
              } else if (constraints.maxWidth > 600 &&
                  constraints.maxWidth < 900) {
                return MyAppBarWebsite(choose: 4);
              } else {
                return MyAppBarWebsite(choose: 4);
              }
            },
          ),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return const StreetsBolaqMobile();
            } else {
              return const StreetsBolaqWebsite();
            }
          },
        ),

      );
    } else {
      return Scaffold(
        appBar: widget.access ? null:PreferredSize(
          preferredSize: Size.fromHeight(screenHeight*0.11),
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 600) {
                return MyAppBarMobile(choose: 4);
              } else if (constraints.maxWidth > 600 &&
                  constraints.maxWidth < 900) {
                return MyAppBarWebsite(choose: 4);
              } else {
                return MyAppBarWebsite(choose: 4);
              }
            },
          ),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return const StreetsBolaqMobile();
            } else {
              return const StreetsBolaqWebsite();
            }
          },
        ),

      );
    }

  }
}