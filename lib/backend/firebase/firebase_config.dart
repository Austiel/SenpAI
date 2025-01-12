import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDBzBXnqlvAuIWwEVI0OtiTV2Jor8r99aw",
            authDomain: "senpai-33293.firebaseapp.com",
            projectId: "senpai-33293",
            storageBucket: "senpai-33293.firebasestorage.app",
            messagingSenderId: "616860048210",
            appId: "1:616860048210:web:eaf7e3b91c67bc7dba788b"));
  } else {
    await Firebase.initializeApp();
  }
}
