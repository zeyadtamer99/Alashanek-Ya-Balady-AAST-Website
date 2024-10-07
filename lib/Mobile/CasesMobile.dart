
import 'package:ayb_database/Widgets/BottomPartMobile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../Widgets/Cards/CaseCardMobile.dart';

class CasesMobile extends StatefulWidget {
  CasesMobile({
    Key? key,
  }) : super(key: key);

  @override
  State<CasesMobile> createState() => _CasesMobileState();
}

class _CasesMobileState extends State<CasesMobile> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> cases =
        FirebaseFirestore.instance.collection('cases').snapshots();
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth,
      height: screenHeight,
      child: Scaffold(
          body: FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print("Has Error");
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 5, bottom: 15),
                    height: (screenHeight/screenWidth)*35,
                    alignment: Alignment.center,
                    child: Text(
                      'Our Current Cases',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: (screenHeight/screenWidth)*17,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                  //Our Families
                  Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Divider(
                      color: Colors.yellow,
                      height: 1.5,
                      thickness: 2,
                      indent: screenWidth * 0.30,
                      endIndent: screenWidth * 0.30,
                    ),
                  ),
                  //Divider

                  //search bar and filter
                  Expanded(
                    flex: 1,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          StreamBuilder(
                            stream: cases,
                            builder: (BuildContext context,
                                AsyncSnapshot<QuerySnapshot> snapshot) {
                              if (snapshot.hasError) {
                                return Text("Something Went Wrong");
                              }
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CircularProgressIndicator(),
                                    Text(
                                      "Loading Cases Data",
                                      style: TextStyle(
                                        decoration: TextDecoration.none,
                                          fontSize: 16, color: Colors.grey),
                                    ),
                                  ],
                                );
                              }
                              final data = snapshot.requireData;

                              return Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        right: screenWidth * 0.1,
                                        left: screenWidth * 0.1),
                                    height: screenHeight,
                                    child: ListView.builder(
                                      itemCount: data.size,
                                      itemBuilder: (context, index) {

                                        return Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Column(
                                              children: [
                                                Container(
                                                  child: InkWell(
                                                    hoverColor: Colors.transparent,
                                                    focusColor: Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    child: CasesCardMobile(
                                                      screenheight: screenHeight,
                                                      screenWidth: screenWidth,
                                                      name: data.docs[index]['name'],
                                                      age: data.docs[index]['age'],
                                                      info: data.docs[index]['info'],
                                                      pic: data.docs[index]['pic'],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                               SizedBox(height: screenHeight*0.1,),
                               BottomPartMobile(screenHeight: screenHeight),
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            });
          }
          return CircularProgressIndicator();
        },
      )),
    );
  }
}
