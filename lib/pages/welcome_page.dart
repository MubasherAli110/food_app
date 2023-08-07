import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/pages/login_page.dart';
import 'package:food_app/pages/sign_up_page.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/welcomepage.png',
              fit: BoxFit.cover,
              height: 812.h,
              width: 375.w,
            ),

            ////

            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color(0xffFFffff).withOpacity(0.1),
                    const Color(0xff000000).withOpacity(0.3),
                    const Color(0xff000000).withOpacity(0.6),
                    const Color(0xff000000).withBlue(10).withOpacity(0.99),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),

            ////Skip

            Positioned(
              top: 26.sp,
              right: 26.sp,
              child: SizedBox(
                height: 32.sp,
                width: 60.sp,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27.r)),
                    backgroundColor: const Color(0xffffffff),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ));
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(
                        color: const Color(0xffFE724C),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),

            ///text

            Positioned(
              top: 160.h,
              left: 28.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome to",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          color: const Color(0xff000000),
                          fontSize: 40.sp,
                          fontWeight: FontWeight.w700),
                    ),
                  ),

                  ///

                  Text(
                    "FoodHub",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          color: const Color(0xffFE724C),
                          fontSize: 30.sp,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(height: 18.h),
                  //

                  Text(
                    "Your favourite foods delivered\nfast at your door.",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),

            //////Divider

            Positioned(
              top: 500.h,
              left: 28,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 20.w),
                        // const Divider(
                        //     endIndent: 42,
                        //     indent: 42,
                        //     color: Colors.red,
                        //     thickness: 9),

                        Container(
                          height: 1.h,
                          width: 70.w,
                          color: Colors.white.withOpacity(0.5),
                        ),
                        SizedBox(width: 25.w),
                        Text(
                          " sign in with",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 20.w),

                        Container(
                          height: 1.h,
                          width: 70.w,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ],
                    ),

                    ////TextButton FACEBOOK

                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        Container(
                          height: 54.h,
                          width: 140.w,
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

                        SizedBox(width: 35.w),
                        Container(
                          height: 54.h,
                          width: 140.w,
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

                    ////TextButton Start with email or phone

                    SizedBox(height: 23.h),
                    Container(
                      height: 54.h,
                      width: 315.w,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(28.r),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SignUpPage()));
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(
                                  width: 1, color: Colors.white),
                            ),
                          ),
                        ),
                        // style:
                        child: Text(
                          "Start with email or phone",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            ////text Already have an account?

            SizedBox(height: 25.h),
            Positioned(
              bottom: 40,
              left: 65.w,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
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
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 10.h,
              left: 120.w,
              child: Container(
                height: 5.h,
                width: 134.w,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
