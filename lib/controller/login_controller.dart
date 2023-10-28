// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:rechat_firebase/view/manu_page.dart';

import '../model/user.dart';
import '../view/widget.dart';

class LoginController extends GetxController {
  List<GoogleUser> user = [];
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
    Show.snackBar("ยินดีต้อนรับ ${googleUser!.displayName}");
    Get.to(MenuBarPage());
  }

  logout(BuildContext context) {
    auth.signOut();
    googleSigIn.signOut().then((value) {});
    Get.back();
  }
}
