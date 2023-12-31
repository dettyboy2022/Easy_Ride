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
    apiKey: 'AIzaSyAEN261QJ4jXGHOcFubTSZaT0kl1MKgdAY',
    appId: '1:962922410991:web:27762a9bd69972a2a8fc1a',
    messagingSenderId: '962922410991',
    projectId: 'easy--rider',
    authDomain: 'easy--rider.firebaseapp.com',
    storageBucket: 'easy--rider.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAsYK-cpXRMWjHPuVxfCjG3QXtk_47rjyE',
    appId: '1:962922410991:android:84c19aeee1ef5216a8fc1a',
    messagingSenderId: '962922410991',
    projectId: 'easy--rider',
    storageBucket: 'easy--rider.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyChm5W8elI8c_MJJWzy8CI45QeLOB6cUJI',
    appId: '1:962922410991:ios:40da8968e2f95fbea8fc1a',
    messagingSenderId: '962922410991',
    projectId: 'easy--rider',
    storageBucket: 'easy--rider.appspot.com',
    iosClientId: '962922410991-brtveuuquulqev423meud668jn46jjlf.apps.googleusercontent.com',
    iosBundleId: 'com.example.easyRide',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyChm5W8elI8c_MJJWzy8CI45QeLOB6cUJI',
    appId: '1:962922410991:ios:78b811b0527c5796a8fc1a',
    messagingSenderId: '962922410991',
    projectId: 'easy--rider',
    storageBucket: 'easy--rider.appspot.com',
    iosClientId: '962922410991-a8ouig0j2pd042o6noqplsorth6nrs76.apps.googleusercontent.com',
    iosBundleId: 'com.example.easyRide.RunnerTests',
  );
}
