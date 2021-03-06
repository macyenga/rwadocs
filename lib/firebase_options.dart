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
//return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
      // return android;
      case TargetPlatform.iOS:
      //s return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  /*static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyC_YchnnoVElqvRpXsWEPvtVIqz09IJ6Vg',
    appId: '1:811290196938:web:67f1005fb061b40ae9ad33',
    messagingSenderId: '811290196938',
    projectId: 'rwanda-doctors',
    authDomain: 'rwanda-doctors.firebaseapp.com',
    storageBucket: 'rwanda-doctors.appspot.com',
    measurementId: 'G-Q6X3S7DMDC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC-zxIiKgCJfLdu9x4FNY-F0VSLohdGLEI',
    appId: '1:811290196938:android:fcb2376af305ede7e9ad33',
    messagingSenderId: '811290196938',
    projectId: 'rwanda-doctors',
    storageBucket: 'rwanda-doctors.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA9LxCYNqM2FBJIaD_T1AtctI8vSX9LDwU',
    appId: '1:811290196938:ios:c036ce9974ea7960e9ad33',
    messagingSenderId: '811290196938',
    projectId: 'rwanda-doctors',
    storageBucket: 'rwanda-doctors.appspot.com',
    iosClientId: '811290196938-6s1h7tvmc2et29o3ceoe5vpi1qtki7pf.apps.googleusercontent.com',
    iosBundleId: 'com.doctors.rwadocs',
  );*/
}
