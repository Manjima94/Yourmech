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
    apiKey: 'AIzaSyD3iR_TUROrBo7e-E7ch29wgemFP4pzBcI',
    appId: '1:474487617626:web:fe4ae0da5bb4b45af8c063',
    messagingSenderId: '474487617626',
    projectId: 'yourmech-73806',
    authDomain: 'yourmech-73806.firebaseapp.com',
    storageBucket: 'yourmech-73806.appspot.com',
    measurementId: 'G-HZWC8CBQ3N',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDkydWmpHgwz8NtBkKzPNqxtXsedz13jzw',
    appId: '1:474487617626:android:5d0de00b3e049f2af8c063',
    messagingSenderId: '474487617626',
    projectId: 'yourmech-73806',
    storageBucket: 'yourmech-73806.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCa4an7FlxA4YcVZirseIenU4A0na1VAk0',
    appId: '1:474487617626:ios:bfb5703885677130f8c063',
    messagingSenderId: '474487617626',
    projectId: 'yourmech-73806',
    storageBucket: 'yourmech-73806.appspot.com',
    iosBundleId: 'com.example.yourmech',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCa4an7FlxA4YcVZirseIenU4A0na1VAk0',
    appId: '1:474487617626:ios:bfb5703885677130f8c063',
    messagingSenderId: '474487617626',
    projectId: 'yourmech-73806',
    storageBucket: 'yourmech-73806.appspot.com',
    iosBundleId: 'com.example.yourmech',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD3iR_TUROrBo7e-E7ch29wgemFP4pzBcI',
    appId: '1:474487617626:web:aafa3e22293b8be1f8c063',
    messagingSenderId: '474487617626',
    projectId: 'yourmech-73806',
    authDomain: 'yourmech-73806.firebaseapp.com',
    storageBucket: 'yourmech-73806.appspot.com',
    measurementId: 'G-BMKX3H1JCT',
  );

}