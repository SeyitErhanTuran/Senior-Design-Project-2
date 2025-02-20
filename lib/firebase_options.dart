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
        return macos;
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
    apiKey: 'AIzaSyCwMZaUvWpyFaiY7FttW3BIwg76CNS3-LU',
    appId: '1:6613736011:web:613650326f3cd806e58bce',
    messagingSenderId: '6613736011',
    projectId: 'senior-project-2-1afa3',
    authDomain: 'senior-project-2-1afa3.firebaseapp.com',
    storageBucket: 'senior-project-2-1afa3.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBNXFgP9TiTu9vnYk2psltyqcuUXadNKTk',
    appId: '1:6613736011:android:76b6c040c23f1f25e58bce',
    messagingSenderId: '6613736011',
    projectId: 'senior-project-2-1afa3',
    storageBucket: 'senior-project-2-1afa3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCoe53-lreGUYJJbZGDXadk6jpcpcpR44c',
    appId: '1:6613736011:ios:3918acba2602c217e58bce',
    messagingSenderId: '6613736011',
    projectId: 'senior-project-2-1afa3',
    storageBucket: 'senior-project-2-1afa3.appspot.com',
    iosBundleId: 'com.example.seniorProject2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCoe53-lreGUYJJbZGDXadk6jpcpcpR44c',
    appId: '1:6613736011:ios:37af56c53775efb8e58bce',
    messagingSenderId: '6613736011',
    projectId: 'senior-project-2-1afa3',
    storageBucket: 'senior-project-2-1afa3.appspot.com',
    iosBundleId: 'com.example.seniorProject2.RunnerTests',
  );
}
