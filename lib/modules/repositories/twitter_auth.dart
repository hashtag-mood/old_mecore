import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:mecore/config/routes/routes.dart';
import 'package:twitter_login/twitter_login.dart';

Future<void> signInWithTwitter(BuildContext context) async {
  TwitterAuthProvider twitterProvider = TwitterAuthProvider();

  try {
    UserCredential userCredential;
    if (kIsWeb) {
      userCredential =
          await FirebaseAuth.instance.signInWithPopup(twitterProvider);
    } else {
      userCredential =
          await FirebaseAuth.instance.signInWithProvider(twitterProvider);
    }

    if (userCredential.user != null) {
      context.go('/today');
    }
  } catch (e) {
    print(e);
  }
}