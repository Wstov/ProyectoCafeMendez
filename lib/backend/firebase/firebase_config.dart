import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDH5SANA-JAV4-GersTjNlRsw21kF59a0I",
            authDomain: "cafe-mendez-r0f5t6.firebaseapp.com",
            projectId: "cafe-mendez-r0f5t6",
            storageBucket: "cafe-mendez-r0f5t6.firebasestorage.app",
            messagingSenderId: "645954297474",
            appId: "1:645954297474:web:18f30cfccc0cb1822c1e9b"));
  } else {
    await Firebase.initializeApp();
  }
}
