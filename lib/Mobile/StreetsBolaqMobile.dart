import 'package:ayb_database/Website/PeopleBolaqWebsite.dart';
import 'package:ayb_database/Widgets/BottomPartMobile.dart';
import 'package:flutter/material.dart';

import '../Widgets/BottomPart.dart';
import '../people.dart';

class StreetsBolaqMobile extends StatefulWidget {
  const StreetsBolaqMobile({Key? key}) : super(key: key);

  @override
  State<StreetsBolaqMobile> createState() => _StreetsBolaqMobileState();
}

class _StreetsBolaqMobileState extends State<StreetsBolaqMobile> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
                  padding: EdgeInsets.only(top: 5, bottom: 15),
                  height: screenheight*0.1,
                  alignment: Alignment.center,
                  child:Text(
                    'Our Streets',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: (screenheight/screenWidth)*25,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
          //Our Streets
          Container(
            padding: EdgeInsets.only(bottom: 30),
            child: Divider(
              color: Colors.red,
              height: 1,
              thickness: 2,
              indent: screenWidth * 0.30,
              endIndent: screenWidth * 0.30,
            ),
          ),
          //Divider
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MaterialButton(
                        hoverElevation: 0.0,
                        child: Stack(
                          children: [
                            Container(
                              width: screenWidth*0.25,
                              height: screenheight * 0.125,
                              decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/street.jpg'),
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
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              child: Container(
                                width: screenWidth * 0.25,
                                height: screenheight * 0.125,
                                color: Colors.black54.withOpacity(0.5),
                              ),
                            ),
                            Container(
                              width: screenWidth*0.25,
                              height: screenheight * 0.125,
                              alignment: Alignment.center,
                              child: Text(
                                'Ali Younes',
                                style: TextStyle(
                                    color: Colors.white, fontSize: (screenheight/screenWidth)*19),
                              textAlign: TextAlign.center,
                              ),

                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  People(streetName: "ali-Younes"),
                            ),
                          );
                        },
                      ),
                      MaterialButton(
                        hoverElevation: 0.0,
                        child: Stack(
                          children: [
                            Container(
                              width: screenWidth*0.25,
                              height: screenheight * 0.125,
                              decoration:const BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/street.jpg'),
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
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              child: Container(
                                width: screenWidth * 0.25,
                                height: screenheight * 0.125,
                                color: Colors.black54.withOpacity(0.5),
                              ),
                            ),
                            Container(
                              width: screenWidth*0.25,
                              height: screenheight * 0.125,
                              alignment: Alignment.center,
                              child: Text(
                                'Wabour El Torguman',
                                style: TextStyle(
                                    color: Colors.white, fontSize: (screenheight/screenWidth)*17),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => People(
                                  streetName: "wabour-El-Torguman"),
                            ),
                          );
                        },
                      ),
                      MaterialButton(
                        hoverElevation: 0.0,
                        child: Stack(
                          children: [
                            Container(
                              width: screenWidth*0.25,
                              height: screenheight * 0.125,
                              decoration:const BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/street.jpg'),
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
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              child: Container(
                                width: screenWidth * 0.25,
                                height: screenheight * 0.125,
                                color: Colors.black54.withOpacity(0.5),
                              ),
                            ),
                            Container(
                              width: screenWidth*0.25,
                              height: screenheight * 0.125,
                              alignment: Alignment.center,
                              child: Text(
                                'Moqadem Ismail',
                                style: TextStyle(
                                    color: Colors.white, fontSize: (screenheight/screenWidth)*18),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => People(
                                  streetName: "moqadem-Ismail"),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenheight * 0.025,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MaterialButton(
                        hoverElevation: 0.0,
                        child: Stack(
                          children: [
                            Container(
                              width: screenWidth*0.25,
                              height: screenheight * 0.125,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/street.jpg'),
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
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              child: Container(
                                width: screenWidth * 0.25,
                                height: screenheight * 0.125,
                                color: Colors.black54.withOpacity(0.5),
                              ),
                            ),
                            Container(
                              width: screenWidth*0.25,
                              height: screenheight * 0.125,
                              alignment: Alignment.center,
                              child: Text(
                                'Abo Hafez',
                                style: TextStyle(
                                    color: Colors.white, fontSize: (screenheight/screenWidth)*19),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => People(
                                  streetName: "abo-Hafez"),
                            ),
                          );
                        },
                      ),
                      MaterialButton(
                        hoverElevation: 0.0,
                        child: Stack(
                          children: [
                            Container(
                              width: screenWidth*0.25,
                              height: screenheight * 0.125,
                              decoration:const BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/street.jpg'),
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
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              child: Container(
                                width: screenWidth * 0.25,
                                height: screenheight * 0.125,
                                color: Colors.black54.withOpacity(0.5),
                              ),
                            ),
                            Container(
                              width: screenWidth*0.25,
                              height: screenheight * 0.125,
                              alignment: Alignment.center,
                              child: Text(
                                'Ali El Sabagh',
                                style: TextStyle(
                                    color: Colors.white, fontSize: (screenheight/screenWidth)*19),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => People(
                                  streetName: "ali-El-Sabagh"),
                            ),
                          );
                        },
                      ),
                      MaterialButton(
                        hoverElevation: 0.0,
                        child: Stack(
                          children: [
                            Container(
                              width: screenWidth*0.25,
                              height: screenheight * 0.125,
                              decoration:const BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/street.jpg'),
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
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              child: Container(
                                width: screenWidth * 0.25,
                                height: screenheight * 0.125,
                                color: Colors.black54.withOpacity(0.5),
                              ),
                            ),
                            Container(
                              width: screenWidth*0.25,
                              height: screenheight * 0.125,
                              alignment: Alignment.center,
                              child: Text(
                                'Mostafa Khater',
                                style: TextStyle(
                                    color: Colors.white, fontSize: (screenheight/screenWidth)*19),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PeopleBolaqWebsite(
                                  streetName: "mostafa-Khater"),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenheight * 0.025,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MaterialButton(
                        hoverElevation: 0.0,
                        child: Stack(
                          children: [
                            Container(
                              width: screenWidth*0.25,
                              height: screenheight * 0.125,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/street.jpg'),
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
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              child: Container(
                                width: screenWidth * 0.25,
                                height: screenheight * 0.125,
                                color: Colors.black54.withOpacity(0.5),
                              ),
                            ),
                            Container(
                              width: screenWidth*0.25,
                              height: screenheight * 0.125,
                              alignment: Alignment.center,
                              child: Text(
                                'Al Abasiri',
                                style: TextStyle(
                                    color: Colors.white, fontSize: (screenheight/screenWidth)*19),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => People(
                                  streetName: "el-Abasiri"),
                            ),
                          );
                        },
                      ),
                      MaterialButton(
                        hoverElevation: 0.0,
                        child: Stack(
                          children: [
                            Container(
                              width: screenWidth*0.25,
                              height: screenheight * 0.125,
                              decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/street.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 3,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              child: Container(
                                width: screenWidth * 0.25,
                                height: screenheight * 0.125,
                                color: Colors.black54.withOpacity(0.5),
                              ),
                            ),
                            Container(
                              width: screenWidth*0.25,
                              height: screenheight * 0.125,
                              alignment: Alignment.center,
                              child: Text(
                                'Haret El Ghoul',
                                style: TextStyle(
                                    color: Colors.white, fontSize: (screenheight/screenWidth)*19),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => People(
                                  streetName: "haret-El-Ghoul"),
                            ),
                          );
                        },
                      ),
                      MaterialButton(
                        hoverElevation: 0.0,
                        child: Stack(
                          children: [
                            Container(
                              width: screenWidth*0.25,
                              height: screenheight * 0.125,
                              decoration:const BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/street.jpg'),
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
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              child: Container(
                                width: screenWidth * 0.25,
                                height: screenheight * 0.125,
                                color: Colors.black54.withOpacity(0.5),
                              ),
                            ),
                            Container(
                              width: screenWidth*0.25,
                              height: screenheight * 0.125,
                              alignment: Alignment.center,
                              child: Text(
                                'Sheikh Mahmoud',
                                style: TextStyle(
                                    color: Colors.white, fontSize: (screenheight/screenWidth)*17),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => People(
                                  streetName: "el-Sheikh-Mahmoud"),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenheight * 0.025,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MaterialButton(
                        hoverElevation: 0.0,
                        child: Stack(
                          children: [
                            Container(
                              width: screenWidth*0.25,
                              height: screenheight * 0.125,
                              decoration:const BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/street.jpg'),
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
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              child: Container(
                                width: screenWidth * 0.25,
                                height: screenheight * 0.125,
                                color: Colors.black54.withOpacity(0.5),
                              ),
                            ),
                            Container(
                              width: screenWidth*0.25,
                              height: screenheight * 0.125,
                              alignment: Alignment.center,
                              child: Text(
                                'Gad Karim Salama',
                                style: TextStyle(
                                    color: Colors.white, fontSize: (screenheight/screenWidth)*17),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => People(
                                  streetName: "gad-Karim-Salama"),
                            ),
                          );
                        },
                      ),
                      MaterialButton(
                        hoverElevation: 0.0,
                        child: Stack(
                          children: [
                            Container(
                              width: screenWidth*0.25,
                              height: screenheight * 0.125,
                              decoration:const BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/street.jpg'),
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
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              child: Container(
                                width: screenWidth * 0.25,
                                height: screenheight * 0.125,
                                color: Colors.black54.withOpacity(0.5),
                              ),
                            ),
                            Container(
                              width: screenWidth*0.25,
                              height: screenheight * 0.125,
                              alignment: Alignment.center,
                              child: Text(
                                'Hussein Farag',
                                style: TextStyle(
                                    color: Colors.white, fontSize: (screenheight/screenWidth)*19),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => People(
                                  streetName: "hussein-Farag"),
                            ),
                          );
                        },
                      ),
                      MaterialButton(
                        hoverElevation: 0.0,
                        child: Stack(
                          children: [
                            Container(
                              width: screenWidth*0.25,
                              height: screenheight * 0.125,
                              decoration:const BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/street.jpg'),
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
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              child: Container(
                                width: screenWidth * 0.25,
                                height: screenheight * 0.125,
                                color: Colors.black54.withOpacity(0.5),
                              ),
                            ),
                            Container(
                              width: screenWidth*0.25,
                              height: screenheight * 0.125,
                              alignment: Alignment.center,
                              child: Text(
                                'Kenisa Adema',
                                style: TextStyle(
                                    color: Colors.white, fontSize: (screenheight/screenWidth)*19),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => People(
                                  streetName: "kenisa-Adema"),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenheight * 0.025,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        hoverElevation: 0.0,
                        child: Stack(
                          children: [
                            Container(
                              width: screenWidth*0.25,
                              height: screenheight * 0.125,
                              decoration:const BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.all(Radius.circular(8)),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/street.jpg'),
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
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              child: Container(
                                width: screenWidth * 0.25,
                                height: screenheight * 0.125,
                                color: Colors.black54.withOpacity(0.5),
                              ),
                            ),
                            Container(
                              width: screenWidth*0.25,
                              height: screenheight * 0.125,
                              alignment: Alignment.center,
                              child: Text(
                                'Kenisa El Gdeida',
                                style: TextStyle(
                                    color: Colors.white, fontSize: (screenheight/screenWidth)*18),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  People(streetName: "kenisa-Gdeida"),
                            ),
                          );
                        },
                      ),
                      MaterialButton(
                        hoverElevation: 0.0,
                        child: Stack(
                          children: [
                            Container(
                              width: screenWidth*0.25,
                              height: screenheight * 0.125,
                              decoration:const BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.all(Radius.circular(8)),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/street.jpg'),
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
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              child: Container(
                                width: screenWidth * 0.25,
                                height: screenheight * 0.125,
                                color: Colors.black54.withOpacity(0.5),
                              ),
                            ),
                            Container(
                              width: screenWidth*0.25,
                              height: screenheight * 0.125,
                              alignment: Alignment.center,
                              child: Text(
                                'Kobanyet El Noor',
                                style: TextStyle(
                                    color: Colors.white, fontSize: (screenheight/screenWidth)*18),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  People(streetName: "kobanyet-El-Noor"),
                            ),
                          );
                        },
                      ),
                    ],
                  ),

                  SizedBox(
                    height: screenheight * 0.1,
                  ),
                  BottomPartMobile(screenHeight: screenheight,),
                ],
              ),
            ),
          ),

        ],
      );
    });
  }
}
