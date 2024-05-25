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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyCqQvZg25qemnPfDToGbAyifeoajJRYSmg',
    appId: '1:328224625558:web:2d142b7d40345d8acd03b7',
    messagingSenderId: '328224625558',
    projectId: 'instagram-clone-60e5f',
    authDomain: 'instagram-clone-60e5f.firebaseapp.com',
    databaseURL: 'https://instagram-clone-60e5f-default-rtdb.firebaseio.com',
    storageBucket: 'instagram-clone-60e5f.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD1cbVAZ5I20Vjh2JkUJ6R_v9qcpnu39FE',
    appId: '1:328224625558:android:a4933bfd966f1fd0cd03b7',
    messagingSenderId: '328224625558',
    projectId: 'instagram-clone-60e5f',
    databaseURL: 'https://instagram-clone-60e5f-default-rtdb.firebaseio.com',
    storageBucket: 'instagram-clone-60e5f.appspot.com',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCqQvZg25qemnPfDToGbAyifeoajJRYSmg',
    appId: '1:328224625558:web:4632dbce86a1f556cd03b7',
    messagingSenderId: '328224625558',
    projectId: 'instagram-clone-60e5f',
    authDomain: 'instagram-clone-60e5f.firebaseapp.com',
    databaseURL: 'https://instagram-clone-60e5f-default-rtdb.firebaseio.com',
    storageBucket: 'instagram-clone-60e5f.appspot.com',
  );
}
