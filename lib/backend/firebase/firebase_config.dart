import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC1Kxay8xghkEvNnkqgbAJs5tTpPxD06Kw",
            authDomain: "reelranker-869c7.firebaseapp.com",
            projectId: "reelranker-869c7",
            storageBucket: "reelranker-869c7.firebasestorage.app",
            messagingSenderId: "377698117101",
            appId: "1:377698117101:web:89683406397e69c07a33e4",
            measurementId: "G-CGM49NVYDQ"));
  } else {
    await Firebase.initializeApp();
  }
}
