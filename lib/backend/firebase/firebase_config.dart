import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCQr5-dLZ2eVEpMz7pKFEr682fA1H72fGo",
            authDomain: "aboveorbelow-2644e.firebaseapp.com",
            projectId: "aboveorbelow-2644e",
            storageBucket: "aboveorbelow-2644e.appspot.com",
            messagingSenderId: "353296137614",
            appId: "1:353296137614:web:242ab2ffe24fa41e4678df"));
  } else {
    await Firebase.initializeApp();
  }
}
