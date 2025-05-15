
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
    apiKey: 'AIzaSyBL33QruI7RlW30JoNTqIqF1IU7STr3z70',
    appId: '1:692447083643:web:6ad9f099231c31313b36de',
    messagingSenderId: '692447083643',
    projectId: 'fir-food-delivery-master',
    authDomain: 'fir-food-delivery-master.firebaseapp.com',
    storageBucket: 'fir-food-delivery-master.firebasestorage.app',
    measurementId: 'G-2NC19R3ZDT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBgtq01-YZs_eCkNIqZ0_6I2l0Ik0RfHQA',
    appId: '1:692447083643:android:c41a03a0375b49bd3b36de',
    messagingSenderId: '692447083643',
    projectId: 'fir-food-delivery-master',
    storageBucket: 'fir-food-delivery-master.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCbIkhUIOu51Eo72T6QwRB2R6m10FVH9a4',
    appId: '1:692447083643:ios:58acf5a851de783e3b36de',
    messagingSenderId: '692447083643',
    projectId: 'fir-food-delivery-master',
    storageBucket: 'fir-food-delivery-master.firebasestorage.app',
    iosBundleId: 'com.example.foodDeliveryMaster',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCbIkhUIOu51Eo72T6QwRB2R6m10FVH9a4',
    appId: '1:692447083643:ios:58acf5a851de783e3b36de',
    messagingSenderId: '692447083643',
    projectId: 'fir-food-delivery-master',
    storageBucket: 'fir-food-delivery-master.firebasestorage.app',
    iosBundleId: 'com.example.foodDeliveryMaster',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBL33QruI7RlW30JoNTqIqF1IU7STr3z70',
    appId: '1:692447083643:web:1736afcb6e8f495d3b36de',
    messagingSenderId: '692447083643',
    projectId: 'fir-food-delivery-master',
    authDomain: 'fir-food-delivery-master.firebaseapp.com',
    storageBucket: 'fir-food-delivery-master.firebasestorage.app',
    measurementId: 'G-77PD10LQJH',
  );
}
