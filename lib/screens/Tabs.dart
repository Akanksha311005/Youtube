import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube/controller/tabs.controller.dart';
import 'package:youtube/screens/homepage.dart';
import 'package:youtube/screens/library.dart';
import 'package:youtube/screens/shorts.dart';
import 'package:youtube/screens/subscription.dart';

class Tabs extends StatelessWidget {
  Tabs({super.key});

  final TabsController controller = Get.put(TabsController());

  final List<Widget> _Screens = [
    Homepage(),
    Shorts(),
    Center(
      child: Icon(Icons.add_circle_outline, size: 80, color: Colors.black),
    ),

    Subscription(),
    Library(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        body: _Screens[controller.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          selectedIconTheme: IconThemeData(color: Colors.white),
          selectedItemColor: Colors.white,
          currentIndex: controller.selectedIndex.value,
          onTap: controller.changeTab,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.play_arrow_rounded),
              label: "Shorts",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions),
              label: 'Subscriptions',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_library),
              label: 'Library',
            ),
          ],
        ),
      );
    });
  }
}
