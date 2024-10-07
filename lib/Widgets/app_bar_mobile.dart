import 'package:ayb_database/AboutUs.dart';
import 'package:ayb_database/Cases.dart';
import 'package:ayb_database/MainMenu.dart';
import 'package:ayb_database/Widgets/OurDatabase.dart';
import 'package:ayb_database/Widgets/OurDatabaseMobile.dart';
import 'package:ayb_database/Widgets/SignIn.dart';
import 'package:ayb_database/streets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Donation.dart';
import '../OurTeams.dart';
import '../sign_in.dart';
import 'SignInMobile.dart';

class MyAppBarMobile extends StatefulWidget implements PreferredSizeWidget {
  int choose = 0;
  MyAppBarMobile({required this.choose});
  @override
  State<MyAppBarMobile> createState() => _MyAppBarMobileState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 20);
}

class _MyAppBarMobileState extends State<MyAppBarMobile> {
  bool _hoverMainMenu = false;
  bool _hoverTeams = false;
  bool _hoverAboutUs = false;
  bool _hoverCurrentCases = false;
  bool isDrawerOpen = false;
  bool _hoverDataBase = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    final FirebaseAuth auth = FirebaseAuth.instance;
    final User? user = auth.currentUser;
    if (user != null) {
      return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(-.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MouseRegion(
                          onHover: (event) {
                            setState(() {
                              _hoverMainMenu = true;
                            });
                          },
                          onExit: (event) {
                            setState(() {
                              _hoverMainMenu = false;
                            });
                          },
                          child: InkWell(
                            hoverColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MainMenu(),
                                ),
                              );
                            },
                            child: Text(
                              'Main Menu',
                              style: TextStyle(
                                color: (_hoverMainMenu || widget.choose == 0)
                                    ? Colors.red
                                    : Colors.black,
                                fontSize: (screenWidth / screenHeight) * 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                        MouseRegion(
                          onHover: (event) {
                            setState(() {
                              _hoverAboutUs = true;
                            });
                          },
                          onExit: (event) {
                            setState(() {
                              _hoverAboutUs = false;
                            });
                          },
                          child: InkWell(
                            hoverColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AboutUs(),
                                ),
                              );
                            },
                            child: Text(
                              'About Us',
                              style: TextStyle(
                                color: (_hoverAboutUs || widget.choose == 1)
                                    ? Colors.red
                                    : Colors.black,
                                fontSize: (screenWidth / screenHeight) * 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                        MouseRegion(
                          onHover: (event) {
                            setState(() {
                              _hoverTeams = true;
                            });
                          },
                          onExit: (event) {
                            setState(() {
                              _hoverTeams = false;
                            });
                          },
                          child: InkWell(
                            hoverColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OurTeams(),
                                ),
                              );
                            },
                            child: Text(
                              'Our Teams',
                              style: TextStyle(
                                color: (_hoverTeams || widget.choose == 2)
                                    ? Colors.red
                                    : Colors.black,
                                fontSize: (screenWidth / screenHeight) * 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                        MouseRegion(
                          onHover: (event) {
                            setState(() {
                              _hoverCurrentCases = true;
                            });
                          },
                          onExit: (event) {
                            setState(() {
                              _hoverCurrentCases = false;
                            });
                          },
                          child: InkWell(
                            hoverColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Cases(),
                                ),
                              );
                            },
                            child: Text(
                              'Cases',
                              style: TextStyle(
                                color: (_hoverCurrentCases || widget.choose == 3)
                                    ? Colors.red
                                    : Colors.black,
                                fontSize: (screenWidth / screenHeight) * 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                        MouseRegion(
                          onHover: (event) {
                            setState(() {
                              _hoverDataBase = true;
                            });
                          },
                          onExit: (event) {
                            setState(() {
                              _hoverDataBase = false;
                            });
                          },
                          child: InkWell(
                            hoverColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => StreetsBolaq(access: false,),
                                ),
                              );
                            },
                            child: Text(
                              'Our DataBase',
                              style: TextStyle(
                                color: (_hoverDataBase || widget.choose == 4) ? Colors.red : Colors.black,
                                fontSize: (screenWidth / screenHeight) * 20 ,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: screenHeight * 0.04,
                        width: screenWidth * 0.13,
                        child: FloatingActionButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                          ),
                          backgroundColor: Color.fromARGB(255, 72, 197, 255),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Donate',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: (screenWidth / screenHeight) * 17,
                                ),
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Donation(),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: screenWidth * 0.007,
                  ),
                  SignInAppBarMobile(),
                  SizedBox(
                    width: screenWidth * 0.007,
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(-.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MouseRegion(
                          onHover: (event) {
                            setState(() {
                              _hoverMainMenu = true;
                            });
                          },
                          onExit: (event) {
                            setState(() {
                              _hoverMainMenu = false;
                            });
                          },
                          child: InkWell(
                            hoverColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MainMenu(),
                                ),
                              );
                            },
                            child: Text(
                              'Main Menu',
                              style: TextStyle(
                                color: (_hoverMainMenu || widget.choose == 0)
                                    ? Colors.red
                                    : Colors.black,
                                fontSize: (screenWidth / screenHeight) * 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                        MouseRegion(
                          onHover: (event) {
                            setState(() {
                              _hoverAboutUs = true;
                            });
                          },
                          onExit: (event) {
                            setState(() {
                              _hoverAboutUs = false;
                            });
                          },
                          child: InkWell(
                            hoverColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AboutUs(),
                                ),
                              );
                            },
                            child: Text(
                              'About Us',
                              style: TextStyle(
                                color: (_hoverAboutUs || widget.choose == 1)
                                    ? Colors.red
                                    : Colors.black,
                                fontSize: (screenWidth / screenHeight) * 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                        MouseRegion(
                          onHover: (event) {
                            setState(() {
                              _hoverTeams = true;
                            });
                          },
                          onExit: (event) {
                            setState(() {
                              _hoverTeams = false;
                            });
                          },
                          child: InkWell(
                            hoverColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OurTeams(),
                                ),
                              );
                            },
                            child: Text(
                              'Our Teams',
                              style: TextStyle(
                                color: (_hoverTeams || widget.choose == 2)
                                    ? Colors.red
                                    : Colors.black,
                                fontSize: (screenWidth / screenHeight) * 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                        MouseRegion(
                          onHover: (event) {
                            setState(() {
                              _hoverCurrentCases = true;
                            });
                          },
                          onExit: (event) {
                            setState(() {
                              _hoverCurrentCases = false;
                            });
                          },
                          child: InkWell(
                            hoverColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Cases(),
                                ),
                              );
                            },
                            child: Text(
                              'Cases',
                              style: TextStyle(
                                color: (_hoverCurrentCases || widget.choose == 3)
                                    ? Colors.red
                                    : Colors.black,
                                fontSize: (screenWidth / screenHeight) * 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: screenHeight * 0.04,
                        width: screenWidth * 0.13,
                        child: FloatingActionButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                          ),
                          backgroundColor: Color.fromARGB(255, 72, 197, 255),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Donate',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: (screenWidth / screenHeight) * 17,
                                ),
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Donation(),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: screenWidth * 0.007,
                  ),
                  SignInAppBarMobile(),
                  SizedBox(
                    width: screenWidth * 0.007,
                  ),
                ],
              ),
            ],
          ),
        ),
      ); // Return an empty container if user is not signed in
    }
  }
}
