import 'package:flutter/material.dart';

class SignInCard extends StatefulWidget {
  const SignInCard({super.key});

  @override
  State<SignInCard> createState() => _SignInCardState();
}

class _SignInCardState extends State<SignInCard> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(1.0, 1.0),
                blurRadius: 5.0,
              ),
            ],
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  hintText: "Username",
                ),
              ),
              SizedBox(height: 10.0),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  hintText: "Password",
                ),
                obscureText: true,
              ),
              SizedBox(height: 20.0),
              FloatingActionButton(
                child: Text("Sign in with Google"),
                onPressed: () {
                  // Implement sign in with Google functionality here
                },
              ),
              SizedBox(height: 10.0),
              FloatingActionButton(
                child: Text("Sign In"),
                onPressed: () {
                  // Implement sign in functionality here
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}