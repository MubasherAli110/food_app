import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/pages/vefification_code_page.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                Image.asset("assets/images/vactor1.png"),
                SizedBox(width: 375.w),
                Positioned(
                  right: 0,
                  child: Image.asset("assets/images/vactor2.png"),
                )
              ]),
              Padding(
                padding: const EdgeInsets.all(26.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sign Up",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontSize: 36.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 31.h),
                    Text(
                      "Full name",
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
                        hintText: "John Doe",
                      ),
                    ),
                    SizedBox(height: 29.h),
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
                        hintText: "johndoe@gmail.com",
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
                        hintText: "**********",
                      ),
                    ),
                    SizedBox(height: 33.h),
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
                              builder: (context) =>
                                  const VefificationCodePage(),
                            ));
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                            ),
                          ),
                          child: Text(
                            "SIGN UP",
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
                          "Already have an account? ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ));
                          },
                          child: Text(
                            "Log In",
                            style: TextStyle(
                              color: const Color(0xffFE724C),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 54.h),
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

                            //////

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
      ),
    );
  }
}
