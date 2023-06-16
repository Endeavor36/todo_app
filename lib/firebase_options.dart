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
    apiKey: 'AIzaSyDLwurJbaNtxGC-53CgXUdIUJUmsoyCTg0',
    appId: '1:904985346769:web:2a4ce4d7bd723939ff7bf0',
    messagingSenderId: '904985346769',
    projectId: 'todo-app-89db2',
    authDomain: 'todo-app-89db2.firebaseapp.com',
    storageBucket: 'todo-app-89db2.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC5j3Olvy1Beb6nGcbtU6SWYSy3t3VVK5Y',
    appId: '1:904985346769:android:458e633888e16e8aff7bf0',
    messagingSenderId: '904985346769',
    projectId: 'todo-app-89db2',
    storageBucket: 'todo-app-89db2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDyy2ttP3J-ELHyAry2eYROhXkoSrJN4JM',
    appId: '1:904985346769:ios:ce884e9f26b84806ff7bf0',
    messagingSenderId: '904985346769',
    projectId: 'todo-app-89db2',
    storageBucket: 'todo-app-89db2.appspot.com',
    iosClientId: '904985346769-8cg23m97tg5e68l5qcke82b7lltfua1b.apps.googleusercontent.com',
    iosBundleId: 'com.example.todoApp',
  );
}
