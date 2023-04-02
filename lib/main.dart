//main.dart

import 'package:car_info3/home_page.dart';
import 'package:car_info3/otp.dart';
import 'package:car_info3/phone.dart';
import 'package:car_info3/profile.dart';
// import 'package:car_info/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'curvednavigationbarpage.dart';
// import 'package:video_player/video_player.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'curvednavigationbarpage',
    //home: SplashScreen(),
    routes: {
      // 'splash' : (context) => const SplashScreen(),
      'curvednavigationbarpage': (context) => const CurvedNavigationBarPage(),
      'phone': (context) => const MyPhone(),
      'otp': (context) => const MyOtp(),
      'home_page' : (context) => const HomePage(),
      'profile'   : (context) => const profile(),
    },
  ));
}