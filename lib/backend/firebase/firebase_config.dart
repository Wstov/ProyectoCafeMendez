import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyArVrCMDR9rt0Mj4UWLHLWMcsqvfma8IDs",
            authDomain: "cafe-mendez.firebaseapp.com",
            projectId: "cafe-mendez",
            storageBucket: "cafe-mendez.firebasestorage.app",
            messagingSenderId: "890908087712",
            appId: "1:890908087712:web:a90e84bc8982fd82c480c5",
            measurementId: "G-GNRFGMB9EQ"));
  } else {
    await Firebase.initializeApp();
  }
}
