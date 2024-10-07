import 'dart:async';

import 'package:ayb_database/AboutUs.dart';
import 'package:ayb_database/OurTeams.dart';
import 'package:ayb_database/Widgets/BottomPart.dart';
import 'package:ayb_database/Widgets/Donationbutton.dart';
import 'package:flutter/material.dart';

class MainMenuWebsite extends StatefulWidget {
  const MainMenuWebsite({Key? key}) : super(key: key);

  @override
  State<MainMenuWebsite> createState() => _MainMenuWebsiteState();
}

class _MainMenuWebsiteState extends State<MainMenuWebsite> {
  int currentIndex = 0;

  final List<String> images = [
    "assets/images/events_pics/R&D.jpg",
    "assets/images/charity.jpg",
    "assets/images/YDP2.png",
    "assets/images/PR.png",
    "assets/images/hr.png",
    "assets/images/MM.jpg"
    //HR
  ];

  bool photoIsHover = false;
  int _currentPage = 0;
  late Timer _timer;
  PageController _pageController = PageController(
    initialPage: 0,
  );
  final videoUrl = "https://www.youtube.com/watch?v=Mmb_ZFPK8ms&t";
  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 5) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    const String ourMissionData =
        "At Alashanak Ya Baladi Association for Sustainable Development, we're a group of university students who believe that we can make a real difference in the world. Our goal is to improve the lives of people in Egypt's most vulnerable communities through sustainable and inclusive development initiatives. We know that simply giving handouts isn't enough, which is why we focus on empowering people with the skills, resources, and opportunities they need to build a better future for themselves and their families. We're passionate about promoting youth and women's empowerment, reducing financial burdens on families, and creating a brighter future for everyone in Egypt. Come join us and let's make a difference together!";
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight,
      width: screenWidth,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.8,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/events_pics/AYB_Group_Photo.jpg'),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 3,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                        ),
                        ClipRRect(
                          child: Container(
                            color: Colors.black54.withOpacity(0.5),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: const Text(
                                'Alashanek Ya Balady',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 58),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: const Text(
                                'AAST',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.1,
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DonationButton(
                          screenHeight: screenHeight,
                          screenWidth: screenWidth,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Our Teams",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 62),
                            ),
                            SizedBox(
                              width: screenWidth * 0.2,
                            ),
                            Container(
                              width: screenWidth * 0.2,
                              height: 2,
                              decoration: BoxDecoration(
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.2,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * 0.1,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: screenHeight * 0.45,
                          width: screenWidth * 0.8,
                          child: PageView(
                            controller: _pageController,
                            children: [
                              MaterialButton(
                                hoverElevation: 0.0,
                                child: Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: new AssetImage(images[0]),
                                          fit: BoxFit.cover,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 3,
                                            offset: Offset(0, 4),
                                          ),
                                        ],
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                      child: Container(
                                        color: Colors.black54.withOpacity(0.5),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Research & Development',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 52),
                                      ),
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                    Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => OurTeams(),
                                    ),
                                  );
                                },
                              ),
                              MaterialButton(
                                hoverElevation: 0.0,
                                child: Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: new AssetImage(images[1]),
                                          fit: BoxFit.cover,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 3,
                                            offset: Offset(0, 4),
                                          ),
                                        ],
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                      child: Container(
                                        color: Colors.black54.withOpacity(0.5),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Charity',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 52),
                                      ),
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                    Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => OurTeams(),
                                    ),
                                  );
                                },
                              ),
                              MaterialButton(
                                hoverElevation: 0.0,
                                child: Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: new AssetImage(images[2]),
                                          fit: BoxFit.cover,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 3,
                                            offset: Offset(0, 4),
                                          ),
                                        ],
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                      child: Container(
                                        color: Colors.black54.withOpacity(0.5),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Youth Development Program',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 52),
                                      ),
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                    Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => OurTeams(),
                                    ),
                                  );
                                },
                              ),
                              //Programs
                              MaterialButton(
                                hoverElevation: 0.0,
                                child: Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: new AssetImage(images[3]),
                                          fit: BoxFit.cover,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 3,
                                            offset: Offset(0, 4),
                                          ),
                                        ],
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                      child: Container(
                                        color: Colors.black54.withOpacity(0.5),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Public Relation',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 52),
                                      ),
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                    Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => OurTeams(),
                                    ),
                                  );
                                },
                              ),
                              MaterialButton(
                                hoverElevation: 0.0,
                                child: Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: new AssetImage(images[4]),
                                          fit: BoxFit.cover,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 3,
                                            offset: Offset(0, 4),
                                          ),
                                        ],
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                      child: Container(
                                        color: Colors.black54.withOpacity(0.5),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Marketing & Media',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 52),
                                      ),
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                    Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => OurTeams(),
                                    ),
                                  );
                                },
                              ),
                              MaterialButton(
                                hoverElevation: 0.0,
                                child: Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: new AssetImage(images[5]),
                                          fit: BoxFit.cover,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 3,
                                            offset: Offset(0, 4),
                                          ),
                                        ],
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                      child: Container(
                                        color: Colors.black54.withOpacity(0.5),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Human Resources',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 52),
                                      ),
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => OurTeams(),
                                    ),
                                  );
                                },
                              ),
                              //OC
                            ],
                          ),
                        ),
                        //Our Teams
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Our  Mission",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 62),
                            ),
                            SizedBox(
                              width: screenWidth * 0.2,
                            ),
                            Container(
                              width: screenWidth * 0.2,
                              height: 2,
                              decoration: BoxDecoration(
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.2,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * 0.1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: screenWidth * 0.3,
                              height: screenHeight * 0.4,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                ),
                                shape: BoxShape.rectangle,
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/groupPhoto.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              width: screenWidth * 0.5,
                              height: screenHeight * 0.4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(32.0),
                                    child: Text(
                                      ourMissionData,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Container(
                                    width: screenWidth * 0.08,
                                    height: screenHeight * 0.05,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // Action to perform when the button is pressed
                                      },
                                      child: Text(
                                        'Join Us',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.lightBlue),
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  //Our Teams
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.1,
            ),
            BottomPart(screenHeight: screenHeight)
          ],
        ),
      ),
    );
  }
}
