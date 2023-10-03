import 'package:flutter/material.dart';
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
          child: Center(
        child: Text(
          "Welcome !! ${loginController.googleUser!.displayName}".tr,
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
      )),
    );
  }
}
