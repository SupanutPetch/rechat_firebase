// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:rechat_firebase/view/home_page.dart';

class LoginController extends GetxController {
  List<User> user = [];
  GoogleSignInAccount? googleUser;
  GoogleSignInAuthentication? googleAuth;
  FirebaseAuth auth = FirebaseAuth.instance;
  final GoogleSignIn googleSigIn = GoogleSignIn();

  login(BuildContext context) async {
    googleUser = await GoogleSignIn().signIn();
    googleAuth = await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    await FirebaseAuth.instance.signInWithCredential(credential);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        "Wellcome ${googleUser!.displayName}",
        style: const TextStyle(fontWeight: FontWeight.w800),
      ),
      backgroundColor: Colors.lightGreen,
    ));
    Get.to(HomePage());
  }

  logout(BuildContext context) {
    auth.signOut();
    googleSigIn.signOut().then((value) {});
    Get.back();
  }
}
