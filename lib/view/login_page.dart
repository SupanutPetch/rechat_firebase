import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rechat_firebase/controller/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: Scaffold(
          backgroundColor: Colors.indigo,
          body: SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2, color: Colors.white),
                  shape: BoxShape.rectangle),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Center(
                    child: Text("select Login",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 22,
                            color: Colors.white)),
                  ),
                  googleButton(context),
                  userLogin()
                ],
              ),
            ),
          )),
        ));
  }

  googleButton(BuildContext context) {
    return Container(
        height: 54,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        child: TextButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/crypto%2Fsearch%20(2).png?alt=media&token=24a918f7-3564-4290-b7e4-08ff54b3c94c",
                  width: 20,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text("Google",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w800)),
              ],
            ),
            onPressed: () => loginController.login(context)));
  }

  Widget userLogin() {
    return Container(
        height: 54,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        child: TextButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)))),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.mail),
                SizedBox(
                  width: 5,
                ),
                Text("email & password",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w800)),
              ],
            ),
            onPressed: () {}));
  }
}
