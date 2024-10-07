import 'package:ayb_database/MainMenu.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../sign_in.dart';

// ...

class SignInAppBar extends StatefulWidget {
  @override
  _SignInAppBarState createState() => _SignInAppBarState();
}

class _SignInAppBarState extends State<SignInAppBar> {
  @override
  Widget build(BuildContext context) {
    // Check if user is signed in
    final FirebaseAuth auth = FirebaseAuth.instance;
    final User? user = auth.currentUser;
    if (user != null) {
      // User is signed in, show this widget
      return SignOutButton();
    } else {
      // User is not signed in, show this widget
      return SignInButton();
    }
  }
}

class SignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       
        Container(
          height: mediaQueryData.size.height * 0.05,
          width: mediaQueryData.size.width * 0.06,
          child: FloatingActionButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(6)),
            ),
            backgroundColor: Color.fromARGB(255, 252, 99, 99),
            hoverColor: Color.fromARGB(255, 255, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: (screenWidth/screenHeight)*6,
                  ),
                ),
                Icon(
                  Icons.login_rounded,
                  size:(screenWidth/screenHeight)*10 ,
                )
              ],
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignIn(),
                ),
              );
            },
          ),
        ),
       
      ],
    );
  }
}
class SignOutButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    final mediaQueryData = MediaQuery.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: mediaQueryData.size.height * 0.01,
        ),
        Container(
          height: mediaQueryData.size.height * 0.05,
          width: mediaQueryData.size.width * 0.07,
          child: FloatingActionButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(6)),
            ),
            backgroundColor: Color.fromARGB(255, 0, 166, 255),
            hoverColor: Color.fromARGB(255, 40, 255, 255),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sign Out',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: (screenWidth/screenHeight)*6,
                  ),
                ),
                Icon(
                  Icons.logout_outlined,
                )
              ],
            ),
            onPressed: () async {
              final FirebaseAuth auth = FirebaseAuth.instance;
              await auth.signOut();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MainMenu(),
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: mediaQueryData.size.height * 0.01,
        ),
      ],
    );
  }
}
