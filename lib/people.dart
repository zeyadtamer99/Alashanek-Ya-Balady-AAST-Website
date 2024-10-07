import 'package:ayb_database/Website/PeopleBolaqWebsite.dart';
import 'package:flutter/material.dart';

import 'Mobile/PeopleBolaqMobile.dart';
import 'Widgets/app_bar_mobile.dart';
import 'Widgets/app_bar_website.dart';

class People extends StatefulWidget {
  final String streetName;
  const People({Key? key, required this.streetName}) : super(key: key);

  @override
  State<People> createState() => _PeopleState();
}

class _PeopleState extends State<People> {
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
              return  PeopleBolaqMobile(streetName: widget.streetName,);
            } else if (constraints.maxWidth > 600 && constraints.maxWidth < 900) {
              return  PeopleBolaqMobile(streetName: widget.streetName);
            } else {
              return  PeopleBolaqWebsite(streetName: widget.streetName,);
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
              return  PeopleBolaqMobile(streetName: widget.streetName,);
            } else if (constraints.maxWidth > 600 && constraints.maxWidth < 900) {
              return  PeopleBolaqMobile(streetName: widget.streetName);
            } else {
              return  PeopleBolaqWebsite(streetName: widget.streetName,);
            }
          },
        ),

      );
    }
  }
}
