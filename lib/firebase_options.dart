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
    apiKey: 'AIzaSyDycNGzxht00iBOvV2W1VKRuLmxfk5j9SU',
    appId: '1:745823349273:web:a31627afe526f2a90d1888',
    messagingSenderId: '745823349273',
    projectId: 'ferryeasy-14311',
    authDomain: 'ferryeasy-14311.firebaseapp.com',
    storageBucket: 'ferryeasy-14311.appspot.com',
    measurementId: 'G-L5RVLNLFBT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBNfURQmXc0Bx9Pv9-HSkNtvM8B5O6o51Q',
    appId: '1:745823349273:android:632e7aa1df73bb4d0d1888',
    messagingSenderId: '745823349273',
    projectId: 'ferryeasy-14311',
    storageBucket: 'ferryeasy-14311.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDkUhrK4NY3_2O9IzosG2jMO230_m79Orc',
    appId: '1:745823349273:ios:d99f1343406bf2ec0d1888',
    messagingSenderId: '745823349273',
    projectId: 'ferryeasy-14311',
    storageBucket: 'ferryeasy-14311.appspot.com',
    iosClientId:
        '745823349273-ohvtuv873tlqrljj4dv7ksei93ve1aic.apps.googleusercontent.com',
    iosBundleId: 'com.example.ferryEasy',
  );
}
