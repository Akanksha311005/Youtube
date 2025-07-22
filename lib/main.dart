import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:youtube/screens/Tabs.dart';
import 'package:youtube/screens/forgot.dart';
import 'package:youtube/screens/homepage.dart';
import 'package:youtube/screens/library.dart';
import 'package:youtube/screens/login.dart';
import 'package:youtube/screens/shorts.dart';
import 'package:youtube/screens/sign.dart';

import 'package:youtube/screens/subscription.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/Sign_': (context) => Sign(),
        '/Login_': (context) => Login(),
        '/Forgot_': (context) => Forgot(),
        '/Homepage_': (context) => Homepage(),
        '/Shorts': (context) => Shorts(),
        '/Subscription_': (context) => Subscription(),
        '/Library_': (context) => Library(),
        '/Tabs_': (context) => Tabs(),
      },

      debugShowCheckedModeBanner: false,
    );
  }
}
