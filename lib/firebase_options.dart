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
    apiKey: 'AIzaSyAJX2mv5sAmSDLG9_taY7zs-RuAgs3fK_g',
    appId: '1:705922519698:web:de27e4a2a995c8c884cc4b',
    messagingSenderId: '705922519698',
    projectId: 'chatapp-4436a',
    authDomain: 'chatapp-4436a.firebaseapp.com',
    storageBucket: 'chatapp-4436a.appspot.com',
    measurementId: 'G-LHE163NE5W',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBbR5yWWUXF2P_duiXn3L1KfQxUs5IIbUQ',
    appId: '1:705922519698:android:e8f794a73fc9c1f784cc4b',
    messagingSenderId: '705922519698',
    projectId: 'chatapp-4436a',
    storageBucket: 'chatapp-4436a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDlZiZd_xcmvQS1v929BZDLXktIxE5zQV0',
    appId: '1:705922519698:ios:c50670f7d422da4384cc4b',
    messagingSenderId: '705922519698',
    projectId: 'chatapp-4436a',
    storageBucket: 'chatapp-4436a.appspot.com',
    iosBundleId: 'com.example.firstApp313',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDlZiZd_xcmvQS1v929BZDLXktIxE5zQV0',
    appId: '1:705922519698:ios:ae4b1f844ae0850784cc4b',
    messagingSenderId: '705922519698',
    projectId: 'chatapp-4436a',
    storageBucket: 'chatapp-4436a.appspot.com',
    iosBundleId: 'com.example.firstApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAJX2mv5sAmSDLG9_taY7zs-RuAgs3fK_g',
    appId: '1:705922519698:web:e82eabcf8158281184cc4b',
    messagingSenderId: '705922519698',
    projectId: 'chatapp-4436a',
    authDomain: 'chatapp-4436a.firebaseapp.com',
    storageBucket: 'chatapp-4436a.appspot.com',
    measurementId: 'G-X9YBTPLZ4K',
  );
}
