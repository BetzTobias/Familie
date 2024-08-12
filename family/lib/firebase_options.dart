// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
    apiKey: 'AIzaSyBOqj2MX1Q7XiRzV3KNNNW7ozG_MPoKwXQ',
    appId: '1:19993777386:web:1209a25f7c22e0369e7393',
    messagingSenderId: '19993777386',
    projectId: 'family-betz',
    authDomain: 'family-betz.firebaseapp.com',
    storageBucket: 'family-betz.appspot.com',
    measurementId: 'G-ET34WT4S76',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDhS9e11rqtT7y73IPC9vCg97qvefHyOsY',
    appId: '1:19993777386:android:45a70791a5a491139e7393',
    messagingSenderId: '19993777386',
    projectId: 'family-betz',
    storageBucket: 'family-betz.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAmJIci9pU07xXevLdP1n6HWm6lMRSSD74',
    appId: '1:19993777386:ios:53cb7adbcc788a779e7393',
    messagingSenderId: '19993777386',
    projectId: 'family-betz',
    storageBucket: 'family-betz.appspot.com',
    iosBundleId: 'com.example.family',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAmJIci9pU07xXevLdP1n6HWm6lMRSSD74',
    appId: '1:19993777386:ios:53cb7adbcc788a779e7393',
    messagingSenderId: '19993777386',
    projectId: 'family-betz',
    storageBucket: 'family-betz.appspot.com',
    iosBundleId: 'com.example.family',
  );

}