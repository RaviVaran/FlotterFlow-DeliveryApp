import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCEnhCjZQ6BaYL4ZFxblsEtR71bpq5mnbw",
            authDomain: "delivery-app-6621f.firebaseapp.com",
            projectId: "delivery-app-6621f",
            storageBucket: "delivery-app-6621f.appspot.com",
            messagingSenderId: "585225077697",
            appId: "1:585225077697:web:6b3e898a5589d39508a540",
            measurementId: "G-85CGPHD2TR"));
  } else {
    await Firebase.initializeApp();
  }
}
