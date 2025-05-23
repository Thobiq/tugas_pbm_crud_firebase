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
    apiKey: 'AIzaSyA69rpwsrc3ySQobJoRbZGox7HWJ5ErIic',
    appId: '1:12847528374:web:56a476b11d3409698ba917',
    messagingSenderId: '12847528374',
    projectId: 'pr-pbm',
    authDomain: 'pr-pbm.firebaseapp.com',
    storageBucket: 'pr-pbm.firebasestorage.app',
    measurementId: 'G-0Z4ZK8NKEY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDjOdTv05efOocC1QsUv_fc-XfxkLUx05w',
    appId: '1:12847528374:android:093bbc0cd4633d168ba917',
    messagingSenderId: '12847528374',
    projectId: 'pr-pbm',
    storageBucket: 'pr-pbm.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA4xtQ0sln_Xpjrd9fp8eITDcpdbFBkxVU',
    appId: '1:12847528374:ios:e5d72af284eec66a8ba917',
    messagingSenderId: '12847528374',
    projectId: 'pr-pbm',
    storageBucket: 'pr-pbm.firebasestorage.app',
    iosBundleId: 'com.example.productFirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA4xtQ0sln_Xpjrd9fp8eITDcpdbFBkxVU',
    appId: '1:12847528374:ios:e5d72af284eec66a8ba917',
    messagingSenderId: '12847528374',
    projectId: 'pr-pbm',
    storageBucket: 'pr-pbm.firebasestorage.app',
    iosBundleId: 'com.example.productFirebase',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA69rpwsrc3ySQobJoRbZGox7HWJ5ErIic',
    appId: '1:12847528374:web:7c9225eb7841d4218ba917',
    messagingSenderId: '12847528374',
    projectId: 'pr-pbm',
    authDomain: 'pr-pbm.firebaseapp.com',
    storageBucket: 'pr-pbm.firebasestorage.app',
    measurementId: 'G-RHKFW82W78',
  );
}
