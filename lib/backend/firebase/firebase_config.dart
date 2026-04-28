import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDzE9FWquhZdOo3-oG_KbfoLruE--FiMyc",
            authDomain: "study-companion-ikdf3h.firebaseapp.com",
            projectId: "study-companion-ikdf3h",
            storageBucket: "study-companion-ikdf3h.firebasestorage.app",
            messagingSenderId: "415434590948",
            appId: "1:415434590948:web:9801077b9e1d8c10df7af1"));
  } else {
    await Firebase.initializeApp();
  }
}
