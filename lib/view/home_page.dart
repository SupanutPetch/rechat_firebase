import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:rechat_firebase/controller/login_controller.dart';

class HomePage extends StatelessWidget {
  final loginController = Get.put(LoginController());
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.indigo,
        leading: InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Container(
            margin: const EdgeInsets.only(left: 2),
            child: const Icon(Icons.logout, size: 20),
          ),
          onTap: () => loginController.logout(context),
        ),
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: 95,
                height: 95,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 3, color: Colors.white)),
                child: (loginController.googleUser!.photoUrl != null)
                    ? CircleAvatar(
                        backgroundColor: Colors.indigo[300],
                        foregroundImage: NetworkImage(
                            loginController.googleUser!.photoUrl ?? ""),
                      )
                    : const Icon(
                        FontAwesomeIcons.user,
                        size: 50,
                        color: Colors.white,
                      )),
          ),
          Center(
            child: Text(
              "Welcome !! ${loginController.googleUser!.displayName}".tr,
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ],
      )),
    );
  }
}
