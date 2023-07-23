import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/pages/welcome_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const WelcomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFE724C),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              'assets/images/logo.png',
              height: 163.h,
              width: 182.w,
            ),
          ),
          Divider(
            color: Colors.white,
            endIndent: 120.sp,
            indent: 120.sp,
            thickness: 5,
          )
        ],
      ),
    );
  }
}
