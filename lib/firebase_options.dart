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
    apiKey: 'AIzaSyDu2-1bvyccN3cWltQP0J7rObLT3Z7QmA4',
    appId: '1:14771472720:web:bdd580ffd158e448d1c455',
    messagingSenderId: '14771472720',
    projectId: 'order-food-data',
    authDomain: 'order-food-data.firebaseapp.com',
    storageBucket: 'order-food-data.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBGAllarCoXVoNiQTbbXn3UjgNtIohtges',
    appId: '1:14771472720:android:d4344f5659fe4b99d1c455',
    messagingSenderId: '14771472720',
    projectId: 'order-food-data',
    storageBucket: 'order-food-data.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAwNANDA8fGJF04P-ydg_w9HmgoqnF0uLY',
    appId: '1:14771472720:ios:d611987553e8dcc9d1c455',
    messagingSenderId: '14771472720',
    projectId: 'order-food-data',
    storageBucket: 'order-food-data.appspot.com',
    iosBundleId: 'com.example.projectOrderFood',
  );
}