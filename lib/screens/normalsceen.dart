// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:youtube/controller/count_controller.dart';

// class Normalsceen extends StatelessWidget {
//   final Apnacontroller = Get.put(normalcontroller());
//   Normalsceen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Obx(() {
//       return Scaffold(
//         appBar: AppBar(title: Text("getx appbar")),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text("${Apnacontroller.count}"),
//             ElevatedButton(
//               onPressed: () {
//                 Apnacontroller.add();
//               },
//               child: Text("Add getx"),
//             ),
//             OutlinedButton(
//               onPressed: () {
//                 Apnacontroller.updatestring();
//               },
//               child: Text("Change"),
//             ),
//           ],
//         ),
//       );
//     });
//   }
// }
