import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:youtube/screens/Tabs.dart';
import 'package:youtube/screens/forgot.dart';
import 'package:youtube/screens/homepage.dart';
import 'package:youtube/screens/library.dart';
import 'package:youtube/screens/login.dart';

import 'package:youtube/screens/playscreen.dart';
import 'package:youtube/screens/shorts.dart';
import 'package:youtube/screens/sign.dart';

import 'package:youtube/screens/subscription.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? token = prefs.getString('token');

  runApp(MyApp(token: token));
}

class MyApp extends StatelessWidget {
  final String? token;
  const MyApp({super.key, required this.token});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: token == null ? '/Login_' : '/Tabs_',
      routes: {
        
        '/Login_': (context) => Login(),
        '/Sign_': (context) => Sign(),
        '/Tabs_': (context) => Tabs(),
        '/Forgot_': (context) => Forgot(),
        '/Homepage_': (context) => Homepage(),
        '/Shorts': (context) => Shorts(),
        '/Subscription_': (context) => Subscription(),
        '/Library_': (context) => Library(),
        '/Play_': (context) => Playscreen(),
      },
    );
  }
}
