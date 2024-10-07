import 'package:ayb_database/AboutUs.dart';
import 'package:ayb_database/Cases.dart';
import 'package:ayb_database/MainMenu.dart';
import 'package:ayb_database/Widgets/OurDatabase.dart';
import 'package:ayb_database/Widgets/SignIn.dart';
import 'package:flutter/material.dart';

import '../Donation.dart';
import '../OurTeams.dart';

class MyAppBarWebsite extends StatefulWidget implements PreferredSizeWidget {
  int choose = 0;
  MyAppBarWebsite({required this.choose});
  @override
  State<MyAppBarWebsite> createState() => _MyAppBarWebsiteState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 20);
}

class _MyAppBarWebsiteState extends State<MyAppBarWebsite> {
  bool _hoverMainMenu = false;
  bool _hoverTeams = false;
  bool _hoverAboutUs = false;
  bool _hoverCurrentCases = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return
    Container(
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
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 4.0,bottom: 4.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.07,
                    height: MediaQuery.of(context).size.height * 0.09,
                    child: Image.asset('assets/images/ayb_logo.png'),
                  ),
                ),
                //Logo
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Alashanek Ya Balady",
                      style: TextStyle(
                        fontSize: (screenWidth / screenHeight) * 10,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.009,
                    ),
                    Text(
                      "AASTMT",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: (screenWidth / screenHeight) * 8,
                      ),
                    ),
                  ],
                ),
                //alashanek ya balady and aastmt

              ],
            ),
          ],
        ),
          Column(
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
                          fontSize: (screenWidth/screenHeight)*10 ,
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
                          fontSize: (screenWidth/screenHeight)*10 ,
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
                          fontSize: (screenWidth/screenHeight)*10 ,
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
                          fontSize: (screenWidth/screenHeight)*10 ,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  OurDatabase(
                    choose: widget.choose,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),

                ],
              ),
            ],
          ),
          GestureDetector(
            onTap: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: screenHeight * 0.05,
                          width: screenWidth * 0.06,
                          child: FloatingActionButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(6)),
                            ),
                            backgroundColor: Color.fromARGB(255, 72, 197, 255),
                            hoverColor: Color.fromARGB(255, 44, 111, 255),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Donate Now',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: (screenWidth/screenHeight)*6,
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
                      width: screenWidth * 0.002,
                    ),
                    SignInAppBar(),
                    SizedBox(
                      width: screenWidth * 0.007,
                    ),

                  ],
                ),
              ],
            ),
          ),

        ],),
    );
  }
}
