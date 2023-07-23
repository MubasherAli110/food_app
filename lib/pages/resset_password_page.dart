import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class RessetPasswordPage extends StatefulWidget {
  const RessetPasswordPage({super.key});

  @override
  State<RessetPasswordPage> createState() => _RessetPasswordPageState();
}

class _RessetPasswordPageState extends State<RessetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                "Resset Password",
                style: GoogleFonts.oswald(
                  textStyle: TextStyle(
                    fontSize: 36.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 12.h),
              Text(
                "Please enter your email address to\nrequest a password reset",
                style: GoogleFonts.oswald(
                  textStyle: TextStyle(
                    color: Colors.black54,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 31.h),
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
              SizedBox(height: 32.h),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: ContinuousRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(60.r))),
                        elevation: 10,
                        backgroundColor: const Color(0xffFE724C),
                        fixedSize: Size(248.w, 60.h)),
                    onPressed: () {
                      //
                    },
                    child: const Text("Send new password")),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
