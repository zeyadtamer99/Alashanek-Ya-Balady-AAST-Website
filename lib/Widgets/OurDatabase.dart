import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../streets.dart';

// ...

class OurDatabase extends StatefulWidget {
  late int choose;


  OurDatabase({required this.choose});

  @override
  _OurDatabaseState createState() => _OurDatabaseState();
}

class _OurDatabaseState extends State<OurDatabase> {
  bool _hoverDataBase = false;

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    // Check if user is signed in
    final FirebaseAuth auth = FirebaseAuth.instance;
    final User? user = auth.currentUser;
    if (user != null) {
      return MouseRegion(
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
              fontSize: (screenWidth/screenHeight)*10 ,
            ),
          ),
        ),
      );
    } else {
      return Container(); // Return an empty container if user is not signed in
    }
  }
}


