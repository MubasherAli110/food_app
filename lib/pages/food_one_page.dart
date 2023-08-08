import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FoodOnePage extends StatefulWidget {
  const FoodOnePage({super.key});

  @override
  State<FoodOnePage> createState() => _FoodOnePageState();
}

class _FoodOnePageState extends State<FoodOnePage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Stack(
                    children: [
                      Container(
                        child: Image.asset(
                          "assets/images/image1.png",
                          height: 206.h,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 8,
                        child: Container(
                          height: 38.h,
                          width: 38.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: Colors.white),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back_ios_new),
                            iconSize: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 22.h),
                Text(
                  "Ground Beef Tacos",
                  style: TextStyle(
                    fontFamily: "SofiaProb",
                    fontSize: 28.sp,
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 15.h,
                      width: 15.w,
                      child: Icon(
                        Icons.star,
                        color: const Color(0xffFFC529),
                        size: 18.sp,
                      ),
                    ),
                    SizedBox(width: 4.w),

                    Text(
                      "4.5",
                      style: TextStyle(
                        fontFamily: "SofiaProb",
                        fontSize: 14.sp,
                        color: const Color(0xff000000),
                      ),
                    ),
                    SizedBox(width: 4.w),

                    ///////////

                    Text(
                      "(25+)",
                      style: TextStyle(
                        fontFamily: "SofiaProR",
                        fontSize: 14.sp,
                        color: const Color(0xff9796A1),
                      ),
                    ),
                    SizedBox(width: 9.w),
                    Text(
                      "See Review",
                      style: TextStyle(
                        fontFamily: "SofiaProR",
                        fontSize: 13.sp,
                        color: const Color(0xffFE724C),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 18.h),
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "\$",
                            style: TextStyle(
                              fontFamily: "SofiaProR",
                              fontSize: 17.sp,
                              color: const Color(0xffFE724C),
                            ),
                          ),
                          WidgetSpan(
                              child: Transform.translate(
                            offset: const Offset(0.0, 9.0),
                            child: Text(
                              "9.50",
                              style: TextStyle(
                                fontFamily: "SofiaProb",
                                fontSize: 30.sp,
                                color: const Color(0xffFE724C),
                              ),
                            ),
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
