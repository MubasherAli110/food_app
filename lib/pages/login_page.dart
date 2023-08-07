import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/pages/home_page.dart';
import 'package:food_app/pages/resset_password_page.dart';
import 'package:food_app/pages/sign_up_page.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset("assets/images/vactor1.png"),
                SizedBox(width: 375.w),
                Positioned(
                  right: 0,
                  child: Image.asset("assets/images/vactor2.png"),
                ),
                Positioned(
                  top: 37.h,
                  left: 27.w,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.r),
                      color: Colors.white,
                    ),
                    child: IconButton(
                        color: Colors.black,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(Icons.arrow_back_ios_new_outlined)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(26.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        fontSize: 36.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 31.h),
                  Text(
                    "E-mail",
                    style: TextStyle(
                        color: const Color(0xff9796A1),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 12.h),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(20),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: const BorderSide(
                          color: Color(0xffEEEEEE),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: const BorderSide(
                          color: Color(0xffFE724C),
                        ),
                      ),
                      hintText: "Your email or phone",
                    ),
                  ),
                  SizedBox(height: 29.h),
                  Text(
                    "Password",
                    style: TextStyle(
                        color: const Color(0xff9796A1),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 12.h),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(20),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: const BorderSide(
                          color: Color(0xffEEEEEE),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: const BorderSide(
                          color: Color(0xffFE724C),
                        ),
                      ),
                      suffixIcon: const Icon(Icons.remove_red_eye),
                      hintText: "Password",
                    ),
                  ),
                  SizedBox(height: 32.h),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const RessetPasswordPage(),
                        ));
                      },
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(
                          color: const Color(0xffFE724C),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 32.h),
                  Center(
                    child: Container(
                      height: 60.h,
                      width: 248.w,
                      decoration: BoxDecoration(
                        color: const Color(0xffFE724C),
                        borderRadius: BorderRadius.circular(28.r),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ));
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                        ),
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 33.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don’t have an account? ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SignUpPage(),
                          ));
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: const Color(0xffFE724C),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 56.h),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 1.h,
                          width: 102.w,
                          color: const Color(0xffB3B3B3),
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          " sign in with",
                          style: TextStyle(
                            color: const Color(0xff5B5B5E),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Container(
                          height: 1.h,
                          width: 102.w,
                          color: const Color(0xffB3B3B3),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Row(
                    children: [
                      Container(
                        height: 57.h,
                        width: 147.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(28.r),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                            ),
                          ),
                          child: Row(
                            children: [
                              Image.asset("assets/images/facebookLogo.png"),
                              SizedBox(width: 10.w),
                              Text(
                                "FACEBOOK",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),

////TextButton google

                      SizedBox(width: 31.w),
                      Container(
                        height: 57.h,
                        width: 147.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(28.r),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                            ),
                          ),
                          // style:
                          child: Row(
                            children: [
                              Image.asset("assets/images/googleLogo.png"),
                              SizedBox(width: 10.w),
                              Text(
                                "GOOGLE",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
