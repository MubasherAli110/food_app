import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:food_app/pages/splash_screen.dart';
import 'package:food_app/pages/home_page.dart';
// import 'package:food_app/pages/welcome_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => MaterialApp(
        title: "Food Hub",
        theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFF8F8F8)),
        // home: const WelcomePage(),
        home: const HomePage(),
        // home: const SplashScreen(),
      ),
    );
  }
}
