// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDoyDfJfbI2Es8BSEs4moChcpUeVwEOKl8',
    appId: '1:825645594978:web:af747eb27c44ec6bf9943b',
    messagingSenderId: '825645594978',
    projectId: 'ayb-database-28aee',
    authDomain: 'ayb-database-28aee.firebaseapp.com',
    storageBucket: 'ayb-database-28aee.appspot.com',
    measurementId: 'G-E3Q0R75H0R',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAMzFgcPbYvPltoD5IT9I5QImJJq17TgJk',
    appId: '1:825645594978:android:8ec65b432130ad43f9943b',
    messagingSenderId: '825645594978',
    projectId: 'ayb-database-28aee',
    storageBucket: 'ayb-database-28aee.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDgZzUzIaF_RWNAkcRNruWPvCzOx8NLtE4',
    appId: '1:825645594978:ios:6ed5a75f2a7908b5f9943b',
    messagingSenderId: '825645594978',
    projectId: 'ayb-database-28aee',
    storageBucket: 'ayb-database-28aee.appspot.com',
    iosClientId: '825645594978-kenabd0b1oj11u7gqpga5ome9n1332sk.apps.googleusercontent.com',
    iosBundleId: 'com.example.aybDatabase',
  );
}