import 'package:ayb_database/Mobile/MainMenuMobile.dart';
import 'package:ayb_database/Website/MainMenuWebsite.dart';
import 'package:ayb_database/Widgets/app_bar_mobile.dart';
import 'package:ayb_database/Widgets/app_bar_website.dart';
import 'package:flutter/material.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
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
                return MyAppBarMobile(choose: 0);
              } else if (constraints.maxWidth > 600 &&
                  constraints.maxWidth < 900) {
                return MyAppBarWebsite(choose: 0);
              } else {
                return MyAppBarWebsite(choose: 0);
              }
            },
          ),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return const MainMenuMobile();
            } else if (constraints.maxWidth > 600 && constraints.maxWidth < 900) {
              return const MainMenuWebsite();
            } else {
              return const MainMenuWebsite();
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
                return MyAppBarMobile(choose: 0);
              } else if (constraints.maxWidth > 600 &&
                  constraints.maxWidth < 900) {
                return MyAppBarWebsite(choose: 0);
              } else {
                return MyAppBarWebsite(choose: 0);
              }
            },
          ),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return const MainMenuMobile();
            } else if (constraints.maxWidth > 600 && constraints.maxWidth < 900) {
              return const MainMenuWebsite();
            } else {
              return const MainMenuWebsite();
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
              return MyAppBarMobile(choose: 0);
            } else if (constraints.maxWidth > 600 &&
                constraints.maxWidth < 900) {
              return MyAppBarWebsite(choose: 0);
            } else {
              return MyAppBarWebsite(choose: 0);
            }
          },
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return const MainMenuMobile();
          } else if (constraints.maxWidth > 600 && constraints.maxWidth < 900) {
            return const MainMenuWebsite();
          } else {
            return const MainMenuWebsite();
          }
        },
      ),
    );
  }
}
