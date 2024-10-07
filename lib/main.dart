import 'package:ayb_database/AboutUs.dart';
import 'package:ayb_database/Cases.dart';
import 'package:ayb_database/MainMenu.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyDoyDfJfbI2Es8BSEs4moChcpUeVwEOKl8",
        authDomain: "ayb-database-28aee.firebaseapp.com",
        projectId: "ayb-database-28aee",
        storageBucket: "ayb-database-28aee.appspot.com",
        messagingSenderId: "825645594978",
        appId: "1:825645594978:web:af747eb27c44ec6bf9943b",
        measurementId: "G-E3Q0R75H0R"),
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Alashanek Ya Balady",
      home: FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print("Has Error");
          }
          if (snapshot.connectionState == ConnectionState.done) {
            print("Entered signup");
            return MainMenu();
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
