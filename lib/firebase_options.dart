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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAqT_8iXHacxAHfa-Hr8HveNAyvmEOmSuQ',
    appId: '1:512189543997:android:c0ccaf45cf68d6de16dc54',
    messagingSenderId: '512189543997',
    projectId: 'flutter-login-app-ed3bb',
    storageBucket: 'flutter-login-app-ed3bb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB32A_DwXtdGYtymHiMuTdi1OuqP1HLxLk',
    appId: '1:512189543997:ios:d3f679ca8e19fc6316dc54',
    messagingSenderId: '512189543997',
    projectId: 'flutter-login-app-ed3bb',
    storageBucket: 'flutter-login-app-ed3bb.appspot.com',
    androidClientId: '512189543997-mj15fimkhnigluhs9kkbqvbgj36ea3rg.apps.googleusercontent.com',
    iosClientId: '512189543997-otd5k6g8b41rfjsksje8idmbcddf0rhk.apps.googleusercontent.com',
    iosBundleId: 'com.example.loginpage',
  );
}
