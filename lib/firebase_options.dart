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
    apiKey: 'AIzaSyCjRrDtsFsVwiYOOj69WYJoylKErn3IrUk',
    appId: '1:151585243770:web:1a53dc675d209474d4f1c3',
    messagingSenderId: '151585243770',
    projectId: 'flutter-mini-project-8a8bb',
    authDomain: 'flutter-mini-project-8a8bb.firebaseapp.com',
    storageBucket: 'flutter-mini-project-8a8bb.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCXR7GK1clUMppt05JUA-n7mIZi4lbvDYM',
    appId: '1:151585243770:android:a75e4f5cf7068240d4f1c3',
    messagingSenderId: '151585243770',
    projectId: 'flutter-mini-project-8a8bb',
    storageBucket: 'flutter-mini-project-8a8bb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyANI86Llc8r3jsdDip0sqP-xb4rgwM0oQM',
    appId: '1:151585243770:ios:c2ac9266a05b75f5d4f1c3',
    messagingSenderId: '151585243770',
    projectId: 'flutter-mini-project-8a8bb',
    storageBucket: 'flutter-mini-project-8a8bb.appspot.com',
    iosClientId: '151585243770-rpgi6sr4o3v7nqrqp98ss8r6jit1bk6e.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterMiniProject',
  );
}
