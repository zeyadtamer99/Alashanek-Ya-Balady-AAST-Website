import 'package:ayb_database/Mobile/CasesMobile.dart';
import 'package:ayb_database/Website/AboutUsWebsite.dart';
import 'package:ayb_database/Website/CasesWebsite.dart';
import 'package:ayb_database/Website/MainMenuWebsite.dart';
import 'package:ayb_database/Widgets/app_bar_website.dart';
import 'package:flutter/material.dart';

import 'Widgets/app_bar_mobile.dart';

class Cases extends StatefulWidget {
  const Cases({Key? key}) : super(key: key);

  @override
  State<Cases> createState() => _CasesState();
}

class _CasesState extends State<Cases> {
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
                return MyAppBarMobile(choose: 3);
              } else if (constraints.maxWidth > 600 &&
                  constraints.maxWidth < 900) {
                return MyAppBarWebsite(choose: 3);
              } else {
                return MyAppBarWebsite(choose: 3);
              }
            },
          ),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return  CasesMobile();
            } else if (constraints.maxWidth > 600 && constraints.maxWidth < 900) {
              return  CasesWebsite();
            } else {
              return  CasesWebsite();
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
                return MyAppBarMobile(choose: 3);
              } else if (constraints.maxWidth > 600 &&
                  constraints.maxWidth < 900) {
                return MyAppBarWebsite(choose: 3);
              } else {
                return MyAppBarWebsite(choose: 3);
              }
            },
          ),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return  CasesMobile();
            } else if (constraints.maxWidth > 600 && constraints.maxWidth < 900) {
              return  CasesWebsite();
            } else {
              return  CasesWebsite();
            }
          },
        ),


      );
    }


  }
}
