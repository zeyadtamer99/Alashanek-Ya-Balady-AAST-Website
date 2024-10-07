import 'package:ayb_database/Website/PeopleBolaqWebsite.dart';
import 'package:flutter/material.dart';

import 'Mobile/AddPeopleMobile.dart';
import 'Website/AddPeopleWebsite.dart';
import 'Widgets/app_bar_mobile.dart';
import 'Widgets/app_bar_website.dart';

class AddPerson extends StatefulWidget {
  final String streetName;
  final double screenWidth;
  final double screenHeight;
  const AddPerson({Key? key, required this.streetName,required this.screenWidth,required this.screenHeight}) : super(key: key);

  @override
  State<AddPerson> createState() => _AddPersonState();
}

class _AddPersonState extends State<AddPerson> {
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
              return  AddPeopleMobile(street: widget.streetName,screenWidth: widget.screenWidth,screenHeight: widget.screenHeight,);
            } else if (constraints.maxWidth > 600 && constraints.maxWidth < 900) {
              return  AddPeopleMobile(street: widget.streetName,screenWidth: widget.screenWidth,screenHeight: widget.screenHeight,);
            } else {
              return  AddPeopleWebsite(street: widget.streetName,screenWidth: widget.screenWidth,screenHeight: widget.screenHeight,);
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
              return  AddPeopleMobile(street: widget.streetName,screenWidth: widget.screenWidth,screenHeight: widget.screenHeight,);
            } else if (constraints.maxWidth > 600 && constraints.maxWidth < 900) {
              return  AddPeopleMobile(street: widget.streetName,screenWidth: widget.screenWidth,screenHeight: widget.screenHeight,);
            } else {
              return  AddPeopleWebsite(street: widget.streetName,screenWidth: widget.screenWidth,screenHeight: widget.screenHeight,);
            }
          },
        ),

      );
    }
  }
}
