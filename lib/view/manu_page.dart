// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../controller/menu_controller.dart';

// class MenuBarPage extends StatelessWidget {
//   final menuController = Get.put(MunuBarController());
//   MenuBarPage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//           child:
//               MunuBarController.page.elementAt(menuController.selectedIndex)),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.chat),
//             label: 'chat',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.account_circle),
//             label: 'profile',
//           ),
//         ],
//         backgroundColor: Colors.indigo,
//         currentIndex: menuController.selectedIndex,
//         selectedItemColor: Colors.white,
//         onTap: (index) => menuController.selectMenu(index),
//       ),
//     );
//   }
// }
//ยังไม่ทำ