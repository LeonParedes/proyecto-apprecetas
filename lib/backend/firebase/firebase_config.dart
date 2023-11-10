import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBwde7_By8-GQU2a8jQf3nU30psieeJOEE",
            authDomain: "apprecetas-1ppm9d.firebaseapp.com",
            projectId: "apprecetas-1ppm9d",
            storageBucket: "apprecetas-1ppm9d.appspot.com",
            messagingSenderId: "956875644218",
            appId: "1:956875644218:web:01f197a94081b06555c403"));
  } else {
    await Firebase.initializeApp();
  }
}
