import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rechat_firebase/view/home_page.dart';
import 'package:rechat_firebase/view/login_page.dart';

class MunuBarController extends GetxController {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  int selectedIndex = 0;
  static List<Widget> page = <Widget>[
    HomePage(),
    LoginPage(),
  ];

  selectMenu(int index) {
    selectedIndex = index;
  }
}
