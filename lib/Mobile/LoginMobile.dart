import 'package:ayb_database/streets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginMobile extends StatefulWidget {
  const LoginMobile({super.key});

  @override
  State<LoginMobile> createState() => _LoginMobileState();
}

class _LoginMobileState extends State<LoginMobile> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isChecked = false;

  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Center(
      child: Container(
        width: screenWidth*0.8,
        height: screenHeight*0.8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Welcome back',
              style: TextStyle(
                fontSize: (screenHeight/screenWidth)*20,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
            //Welcome Back
             SizedBox(height: screenHeight*0.01),
            Text(
              'Login to your account',
              style: GoogleFonts.inter(
                fontSize: (screenHeight/screenWidth)*15,
                color: Colors.black,
              ),
            ),
            //Login
             SizedBox(height: screenHeight*0.02),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your email address',
              ),
            ),
            //Email
            SizedBox(height: screenHeight*0.02),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
              ),
            ),
            //Password
            SizedBox(height: screenHeight*0.05),
            InkWell(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                decoration: BoxDecoration(
                  color: Colors.red,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                      offset: Offset(0, 4),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.center,
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              onTap: _signIn
            ),
            SizedBox(height: screenHeight*0.01),
            InkWell(
              child: Container(
                padding:
                    EdgeInsets.symmetric(vertical: 7.5, horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                      offset: Offset(0, 4),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 30,
                      child: Image.asset('assets/images/google_logo.png'),
                    ),
                    SizedBox(height: screenHeight*0.05),
                    Text(
                      'Continue with Google',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
              },
            ),
          ],
        ),
      ),
    );
  }

  Future _signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim());
  }
}
