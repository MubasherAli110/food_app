import 'package:flutter/material.dart';
import 'package:food_app/widgets/home_drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'food_one_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const HomeDrawer(),
        appBar: AppBar(
          toolbarHeight: 120,
          backgroundColor: Colors.white.withOpacity(0.1),
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Deliver to",
                            style: TextStyle(
                              color: const Color(0xff8C9099),
                              fontSize: 14.sp,
                            ),
                          ),
                          SizedBox(width: 10.w),
                          DropdownButton<String>(
                            icon: const Icon(Icons.keyboard_arrow_down_rounded),
                            items: <String>['A', 'B', 'C', 'D']
                                .map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (_) {},
                          )
                        ],
                      ),
                      Text(
                        "4102  Pretty View Lane ",
                        style: TextStyle(
                          color: const Color(0xffFE724C),
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          actions: [
            Image.asset(
              "assets/images/image.png",
              height: 60.h,
              width: 60.w,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.r),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "What would you like\nto order",
                      style: TextStyle(
                          fontSize: 30.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 19.h),

//////////////

                    Row(
                      children: [
                        Card(
                          elevation: 5,
                          shape: ContinuousRectangleBorder(
                              borderRadius: BorderRadius.circular(67.r)),
                          child: SizedBox(
                            height: 51.h,
                            width: 256.w,
                            child: TextField(
                              decoration: InputDecoration(
                                  fillColor:
                                      const Color.fromARGB(220, 250, 250, 250),
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(19.r),
                                    borderSide: const BorderSide(
                                      width: 1,
                                      color: Color(0xffEFEFEF),
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.r),
                                    borderSide: const BorderSide(
                                      width: 1,
                                      color: Color(0xffEFEFEF),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.r),
                                    borderSide: const BorderSide(
                                      width: 1,
                                      color: Color(0xffEFEFEF),
                                    ),
                                  ),
                                  hintText: "Find for food or restaurant...",
                                  hintStyle: TextStyle(
                                    color: const Color(0xff9AA0B4),
                                    fontSize: 14.sp,
                                  ),
                                  prefixIcon: const Icon(Icons.search)),
                            ),
                          ),
                        ),

///////////

                        SizedBox(width: 10.w),
                        Stack(
                          children: [
                            Card(
                              elevation: 5,
                              shape: ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(14.r)),
                              child: Positioned(
                                left: 16,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Image.asset(
                                    "assets/images/fillter.png",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

/////////////////

              Padding(
                padding: EdgeInsets.only(left: 25.r),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                          height: 100.h,
                          width: 60.w,
                          child: Card(
                            color: Colors.white,
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(100.r),
                              ),
                            ),
                            child: Column(children: [
                              Image.asset("assets/images/burger.png"),
                              SizedBox(height: 5.h),
                              Text(
                                "Burger",
                                style: TextStyle(
                                  color: const Color(0xff67666D),
                                  fontFamily: "SofiaProR",
                                  fontSize: 11.sp,
                                ),
                              )
                            ]),
                          )),

///////////

                      SizedBox(width: 14.w),
                      SizedBox(
                          height: 100.h,
                          width: 60.w,
                          child: Card(
                            color: Colors.white,
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(100.r),
                              ),
                            ),
                            child: Column(children: [
                              Image.asset("assets/images/donat.png"),
                              // SizedBox(height: 5.h),
                              Text(
                                "Donat",
                                style: TextStyle(
                                    color: const Color(0xff67666D),
                                    fontFamily: "SofiaProR",
                                    fontSize: 11.sp),
                              )
                            ]),
                          )),

///////////

                      SizedBox(width: 14.w),
                      SizedBox(
                          height: 100.h,
                          width: 60.w,
                          child: Card(
                            color: Colors.white,
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(100.r),
                              ),
                            ),
                            child: Column(children: [
                              Image.asset("assets/images/pizza.png"),
                              // SizedBox(height: 2.h),
                              Text(
                                "Pizza",
                                style: TextStyle(
                                  color: const Color(0xff67666D),
                                  fontFamily: "SofiaProR",
                                  fontSize: 11.sp,
                                ),
                              )
                            ]),
                          )),

///////////

                      SizedBox(width: 14.w),
                      SizedBox(
                          height: 100.h,
                          width: 60.w,
                          child: Card(
                            color: Colors.white,
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(100.r),
                              ),
                            ),
                            child: Column(children: [
                              Image.asset("assets/images/mexican.png"),
                              // SizedBox(height: 5.h),
                              Text(
                                "Mexican",
                                style: TextStyle(
                                    color: const Color(0xff67666D),
                                    fontFamily: "SofiaProR",
                                    // fontWeight: FontWeight.normal,
                                    fontSize: 10.sp),
                              )
                            ]),
                          )),

///////////

                      SizedBox(width: 14.w),
                      SizedBox(
                          height: 100.h,
                          width: 60.w,
                          child: Card(
                            color: Colors.white,
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(100.r),
                              ),
                            ),
                            child: Column(children: [
                              Image.asset("assets/images/asian.png"),
                              // SizedBox(height: 5.h),
                              Text(
                                "Asian",
                                style: TextStyle(
                                    color: const Color(0xff67666D),
                                    fontFamily: "SofiaProR",
                                    fontSize: 11.sp),
                              )
                            ]),
                          )),

///////////

                      SizedBox(width: 14.w),
                      SizedBox(
                          height: 100.h,
                          width: 60.w,
                          child: Card(
                            color: Colors.white,
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(100.r),
                              ),
                            ),
                            child: Column(children: [
                              Image.asset("assets/images/ice.png"),
                              SizedBox(height: 5.h),
                              Text(
                                "Ice",
                                style: TextStyle(
                                    color: const Color(0xff67666D),
                                    fontFamily: "SofiaProR",
                                    fontSize: 11.sp),
                              ),
                            ]),
                          )),
                    ],
                  ),
                ),
              ),

///////////

              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.only(left: 25.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Featured Restaurants",
                          style: TextStyle(
                              fontFamily: "SofiaProb", fontSize: 18.sp),
                        ),

///////////

                        SizedBox(width: 55.w),
                        InkWell(
                          // onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ,)),
                          child: Row(
                            children: [
                              Text(
                                "View All",
                                style: TextStyle(
                                  fontFamily: "SofiaProR",
                                  fontSize: 13.sp,
                                  color: const Color(0xffF56844),
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 15,
                                color: Color(0xffF56844),
                              )
                            ],
                          ),
                        )
                      ],
                    ),

//////////////////////////////

                    SizedBox(height: 20.h),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(
                            height: 270.h,
                            child: InkWell(
                              onTap: () =>
                                  Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const FoodOnePage(),
                              )),
                              child: Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.r)),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Stack(children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15.r),
                                              topRight: Radius.circular(
                                                  15.r)), // Image border
                                          child: Image.asset(
                                            "assets/images/image1.png",
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Positioned(
                                          left: 10,
                                          child: Row(
                                            children: [
                                              Card(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100.r)),
                                                child: Padding(
                                                  padding: EdgeInsets.all(8.r),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "4.5",
                                                        style: TextStyle(
                                                          fontFamily:
                                                              "SofiaProb",
                                                          fontSize: 11.sp,
                                                          color: const Color(
                                                              0xff000000),
                                                        ),
                                                      ),
                                                      SizedBox(width: 4.w),
                                                      SizedBox(
                                                        height: 15.h,
                                                        width: 15.w,
                                                        child: Icon(
                                                          Icons.star,
                                                          color: const Color(
                                                              0xffFFC529),
                                                          size: 15.sp,
                                                        ),
                                                      ),

                                                      ///////////

                                                      Text(
                                                        "(25+)",
                                                        style: TextStyle(
                                                          fontFamily:
                                                              "SofiaPror",
                                                          fontSize: 8.sp,
                                                          color: const Color(
                                                              0xff9796A1),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 110.w),
                                              Image.asset(
                                                "assets/images/heart.png",
                                              ),
                                            ],
                                          ),
                                        ),
                                      ]),

                                      ///////////

                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "McDonald’s",
                                                  style: TextStyle(
                                                    fontFamily: "SofiaProb",
                                                    fontSize: 15.sp,
                                                  ),
                                                ),
                                                SizedBox(width: 10.w),

                                                ///////////

                                                Container(
                                                  height: 15.h,
                                                  width: 15.w,
                                                  decoration:
                                                      const BoxDecoration(
                                                          color:
                                                              Color(0xff029094),
                                                          shape:
                                                              BoxShape.circle),
                                                  child: const Icon(
                                                    Icons.done,
                                                    color: Colors.white,
                                                    size: 10,
                                                  ),
                                                )
                                              ],
                                            ),

                                            ///////////

                                            Row(
                                              children: [
                                                Image.asset(
                                                  "assets/images/delivery.png",
                                                ),
                                                SizedBox(width: 6.w),
                                                Text(
                                                  "Free delivery",
                                                  style: TextStyle(
                                                    fontFamily: "SofiaProR",
                                                    fontSize: 12.sp,
                                                    color: Color(0xff7E8392),
                                                  ),
                                                ),
                                                SizedBox(width: 17.w),
                                                Icon(
                                                  Icons.access_time_rounded,
                                                  color: Color(0xffFE724C),
                                                  size: 15.sp,
                                                ),
                                                SizedBox(width: 6.w),
                                                Text(
                                                  "10-15 mins",
                                                  style: TextStyle(
                                                    fontFamily: "SofiaProR",
                                                    fontSize: 12.sp,
                                                    color: Color(0xff7E8392),
                                                  ),
                                                ),
                                              ],
                                            ),

                                            ///////////

                                            SizedBox(height: 10),
                                            Row(
                                              children: [
                                                Container(
                                                  height: 22.h,
                                                  width: 54.w,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffF6F6F6),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.r)),
                                                  child: Center(
                                                    child: Text(
                                                      "Burger",
                                                      style: TextStyle(
                                                        fontFamily: "SofiaProR",
                                                        fontSize: 12.sp,
                                                        color:
                                                            Color(0xff7E8392),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 8.w),

                                                /////////
                                                Container(
                                                  height: 22.h,
                                                  width: 60.w,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffF6F6F6),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.r)),
                                                  child: Center(
                                                    child: Text(
                                                      "Chicken",
                                                      style: TextStyle(
                                                        fontFamily: "SofiaProR",
                                                        fontSize: 12.sp,
                                                        color:
                                                            Color(0xff7E8392),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 8.w),

                                                /////////
                                                Container(
                                                  height: 22.h,
                                                  width: 70.w,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffF6F6F6),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.r)),
                                                  child: Center(
                                                    child: Text(
                                                      "Fast Food",
                                                      style: TextStyle(
                                                        fontFamily: "SofiaProR",
                                                        fontSize: 12.sp,
                                                        color:
                                                            Color(0xff7E8392),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 8.w),

                                                /////////
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ]),
                              ),
                            ),
                          ),

///////////////////////
                          SizedBox(width: 15.w),
                          SizedBox(
                            height: 270.h,
                            child: Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.r)),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15.r),
                                            topRight: Radius.circular(
                                                15.r)), // Image border
                                        child: Image.asset(
                                          "assets/images/image2.png",
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Positioned(
                                        left: 10,
                                        child: Row(
                                          children: [
                                            Card(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100.r)),
                                              child: Padding(
                                                padding: EdgeInsets.all(8.r),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      "4.7",
                                                      style: TextStyle(
                                                        fontFamily: "SofiaProb",
                                                        fontSize: 11.sp,
                                                        color: const Color(
                                                            0xff000000),
                                                      ),
                                                    ),
                                                    SizedBox(width: 4.w),
                                                    SizedBox(
                                                      height: 15.h,
                                                      width: 15.w,
                                                      child: Icon(
                                                        Icons.star,
                                                        color: const Color(
                                                            0xffFFC529),
                                                        size: 15.sp,
                                                      ),
                                                    ),

///////////

                                                    Text(
                                                      "(99+)",
                                                      style: TextStyle(
                                                        fontFamily: "SofiaPror",
                                                        fontSize: 8.sp,
                                                        color: const Color(
                                                            0xff9796A1),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 110.w),
                                            Image.asset(
                                              "assets/images/heart.png",
                                            ),
                                          ],
                                        ),
                                      ),
                                    ]),

///////////

                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "Starbuck",
                                                style: TextStyle(
                                                  fontFamily: "SofiaProb",
                                                  fontSize: 15.sp,
                                                ),
                                              ),
                                              SizedBox(width: 10.w),

///////////

                                              Container(
                                                height: 15.h,
                                                width: 15.w,
                                                decoration: const BoxDecoration(
                                                    color: Color(0xff029094),
                                                    shape: BoxShape.circle),
                                                child: const Icon(
                                                  Icons.done,
                                                  color: Colors.white,
                                                  size: 10,
                                                ),
                                              )
                                            ],
                                          ),

///////////

                                          Row(
                                            children: [
                                              Image.asset(
                                                "assets/images/delivery.png",
                                              ),
                                              SizedBox(width: 6.w),
                                              Text(
                                                "Free delivery",
                                                style: TextStyle(
                                                  fontFamily: "SofiaProR",
                                                  fontSize: 12.sp,
                                                  color: Color(0xff7E8392),
                                                ),
                                              ),
                                              SizedBox(width: 17.w),
                                              Icon(
                                                Icons.access_time_rounded,
                                                color: Color(0xffFE724C),
                                                size: 15.sp,
                                              ),
                                              SizedBox(width: 6.w),
                                              Text(
                                                "10-15 mins",
                                                style: TextStyle(
                                                  fontFamily: "SofiaProR",
                                                  fontSize: 12.sp,
                                                  color: Color(0xff7E8392),
                                                ),
                                              ),
                                            ],
                                          ),

///////////

                                          SizedBox(height: 10),
                                          Row(
                                            children: [
                                              Container(
                                                height: 22.h,
                                                width: 54.w,
                                                decoration: BoxDecoration(
                                                    color: Color(0xffF6F6F6),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.r)),
                                                child: Center(
                                                  child: Text(
                                                    "Burger",
                                                    style: TextStyle(
                                                      fontFamily: "SofiaProR",
                                                      fontSize: 12.sp,
                                                      color: Color(0xff7E8392),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 8.w),

/////////
                                              Container(
                                                height: 22.h,
                                                width: 60.w,
                                                decoration: BoxDecoration(
                                                    color: Color(0xffF6F6F6),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.r)),
                                                child: Center(
                                                  child: Text(
                                                    "Chicken",
                                                    style: TextStyle(
                                                      fontFamily: "SofiaProR",
                                                      fontSize: 12.sp,
                                                      color: Color(0xff7E8392),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 8.w),

//////////////
                                              Container(
                                                height: 22.h,
                                                width: 70.w,
                                                decoration: BoxDecoration(
                                                    color: Color(0xffF6F6F6),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.r)),
                                                child: Center(
                                                  child: Text(
                                                    "Fast Food",
                                                    style: TextStyle(
                                                      fontFamily: "SofiaProR",
                                                      fontSize: 12.sp,
                                                      color: Color(0xff7E8392),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ]),
                            ),
                          ),

/////////////////////////////////////////////////
                        ],
                      ),
                    ),

//////
                    SizedBox(height: 24.h),

                    Text(
                      "Popular Items",
                      style:
                          TextStyle(fontFamily: "SofiaProb", fontSize: 18.sp),
                    ),
                    SizedBox(height: 15.h),

///////////////////////////////////////

                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.r)),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(children: [
                                  Image.asset(
                                    "assets/images/image3.png",
                                    fit: BoxFit.fill,
                                  ),
                                  Positioned(
                                    // left: 5,
                                    child: Row(
                                      children: [
                                        Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(100.r)),
                                          child: Padding(
                                            padding: EdgeInsets.all(7.r),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "\$",
                                                  style: TextStyle(
                                                    fontFamily: "SofiaProb",
                                                    fontSize: 11.sp,
                                                    color:
                                                        const Color(0xffFE724C),
                                                  ),
                                                ),

                                                ///////////

                                                Text(
                                                  "5.50",
                                                  style: TextStyle(
                                                    fontFamily: "SofiaProb",
                                                    fontSize: 14.sp,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 30.w),
                                        Image.asset(
                                          "assets/images/heart.png",
                                        ),
                                      ],
                                    ),
                                  ),

                                  //////////

                                  Positioned(
                                    bottom: -8,
                                    // left: 10,
                                    child: Row(
                                      children: [
                                        Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(100.r)),
                                          child: Padding(
                                            padding: EdgeInsets.all(8.r),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "4.7",
                                                  style: TextStyle(
                                                    fontFamily: "SofiaProb",
                                                    fontSize: 11.sp,
                                                    color:
                                                        const Color(0xff000000),
                                                  ),
                                                ),
                                                SizedBox(width: 4.w),
                                                SizedBox(
                                                  height: 15.h,
                                                  width: 15.w,
                                                  child: Icon(
                                                    Icons.star,
                                                    color:
                                                        const Color(0xffFFC529),
                                                    size: 15.sp,
                                                  ),
                                                ),

                                                ///////////

                                                Text(
                                                  "(25+)",
                                                  style: TextStyle(
                                                    fontFamily: "SofiaPror",
                                                    fontSize: 8.sp,
                                                    color:
                                                        const Color(0xff9796A1),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 110.w),
                                        Image.asset(
                                          "assets/images/heart.png",
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),

                                ///////////

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Salmon Salad",
                                            style: TextStyle(
                                              fontFamily: "SofiaProb",
                                              fontSize: 15.sp,
                                            ),
                                          ),
                                          SizedBox(width: 10.w),
                                        ],
                                      ),

                                      ///////////

                                      Text(
                                        "Baked salmon fish",
                                        style: TextStyle(
                                            fontFamily: "SofiaProR",
                                            fontSize: 12.sp,
                                            color: Color(0xff9796A1)),
                                      ),
                                    ],
                                  ),
                                )
                              ]),
                        ),

/////////////

                        SizedBox(width: 33.w),
                        Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.r)),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(children: [
                                  Image.asset(
                                    "assets/images/image3.png",
                                    fit: BoxFit.fill,
                                  ),
                                  Positioned(
                                    // left: 5,
                                    child: Row(
                                      children: [
                                        Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(100.r)),
                                          child: Padding(
                                            padding: EdgeInsets.all(7.r),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "\$",
                                                  style: TextStyle(
                                                    fontFamily: "SofiaProb",
                                                    fontSize: 11.sp,
                                                    color:
                                                        const Color(0xffFE724C),
                                                  ),
                                                ),

                                                ///////////

                                                Text(
                                                  "5.50",
                                                  style: TextStyle(
                                                    fontFamily: "SofiaProb",
                                                    fontSize: 14.sp,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 30.w),
                                        Image.asset(
                                          "assets/images/heart.png",
                                        ),
                                      ],
                                    ),
                                  ),

                                  //////////

                                  Positioned(
                                    bottom: 0,
                                    // left: 10,
                                    child: Row(
                                      children: [
                                        Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(100.r)),
                                          child: Padding(
                                            padding: EdgeInsets.all(8.r),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "4.7",
                                                  style: TextStyle(
                                                    fontFamily: "SofiaProb",
                                                    fontSize: 11.sp,
                                                    color:
                                                        const Color(0xff000000),
                                                  ),
                                                ),
                                                SizedBox(width: 4.w),
                                                SizedBox(
                                                  height: 15.h,
                                                  width: 15.w,
                                                  child: Icon(
                                                    Icons.star,
                                                    color:
                                                        const Color(0xffFFC529),
                                                    size: 15.sp,
                                                  ),
                                                ),

                                                ///////////

                                                Text(
                                                  "(25+)",
                                                  style: TextStyle(
                                                    fontFamily: "SofiaPror",
                                                    fontSize: 8.sp,
                                                    color:
                                                        const Color(0xff9796A1),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),

                                ///////////

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Salmon Salad",
                                            style: TextStyle(
                                              fontFamily: "SofiaProb",
                                              fontSize: 15.sp,
                                            ),
                                          ),
                                          SizedBox(width: 10.w),
                                        ],
                                      ),

                                      ///////////

                                      Text(
                                        "Baked salmon fish",
                                        style: TextStyle(
                                            fontFamily: "SofiaProR",
                                            fontSize: 12.sp,
                                            color: Color(0xff9796A1)),
                                      ),
                                    ],
                                  ),
                                )
                              ]),
                        ),
                      ],
                    ),

//////////////////////////////////////////////////////////////

                    SizedBox(height: 15.h),
                    Row(
                      children: [
                        Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.r)),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(children: [
                                  Image.asset(
                                    "assets/images/image3.png",
                                    fit: BoxFit.fill,
                                  ),
                                  Positioned(
                                    // left: 5,
                                    child: Row(
                                      children: [
                                        Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(100.r)),
                                          child: Padding(
                                            padding: EdgeInsets.all(7.r),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "\$",
                                                  style: TextStyle(
                                                    fontFamily: "SofiaProb",
                                                    fontSize: 11.sp,
                                                    color:
                                                        const Color(0xffFE724C),
                                                  ),
                                                ),

                                                ///////////

                                                Text(
                                                  "5.50",
                                                  style: TextStyle(
                                                    fontFamily: "SofiaProb",
                                                    fontSize: 14.sp,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 30.w),
                                        Image.asset(
                                          "assets/images/heart.png",
                                        ),
                                      ],
                                    ),
                                  ),

                                  //////////

                                  Positioned(
                                    bottom: -8,
                                    // left: 10,
                                    child: Row(
                                      children: [
                                        Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(100.r)),
                                          child: Padding(
                                            padding: EdgeInsets.all(8.r),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "4.7",
                                                  style: TextStyle(
                                                    fontFamily: "SofiaProb",
                                                    fontSize: 11.sp,
                                                    color:
                                                        const Color(0xff000000),
                                                  ),
                                                ),
                                                SizedBox(width: 4.w),
                                                SizedBox(
                                                  height: 15.h,
                                                  width: 15.w,
                                                  child: Icon(
                                                    Icons.star,
                                                    color:
                                                        const Color(0xffFFC529),
                                                    size: 15.sp,
                                                  ),
                                                ),

                                                ///////////

                                                Text(
                                                  "(25+)",
                                                  style: TextStyle(
                                                    fontFamily: "SofiaPror",
                                                    fontSize: 8.sp,
                                                    color:
                                                        const Color(0xff9796A1),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 110.w),
                                        Image.asset(
                                          "assets/images/heart.png",
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),

                                ///////////

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Salmon Salad",
                                            style: TextStyle(
                                              fontFamily: "SofiaProb",
                                              fontSize: 15.sp,
                                            ),
                                          ),
                                          SizedBox(width: 10.w),
                                        ],
                                      ),

                                      ///////////

                                      Text(
                                        "Baked salmon fish",
                                        style: TextStyle(
                                            fontFamily: "SofiaProR",
                                            fontSize: 12.sp,
                                            color: Color(0xff9796A1)),
                                      ),
                                    ],
                                  ),
                                )
                              ]),
                        ),

/////////////

                        SizedBox(width: 33.w),
                        Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.r)),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(children: [
                                  Image.asset(
                                    "assets/images/image3.png",
                                    fit: BoxFit.fill,
                                  ),
                                  Positioned(
                                    // left: 5,
                                    child: Row(
                                      children: [
                                        Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(100.r)),
                                          child: Padding(
                                            padding: EdgeInsets.all(7.r),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "\$",
                                                  style: TextStyle(
                                                    fontFamily: "SofiaProb",
                                                    fontSize: 11.sp,
                                                    color:
                                                        const Color(0xffFE724C),
                                                  ),
                                                ),

                                                ///////////

                                                Text(
                                                  "5.50",
                                                  style: TextStyle(
                                                    fontFamily: "SofiaProb",
                                                    fontSize: 14.sp,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 30.w),
                                        Image.asset(
                                          "assets/images/heart.png",
                                        ),
                                      ],
                                    ),
                                  ),

                                  //////////

                                  Positioned(
                                    bottom: 0,
                                    // left: 10,
                                    child: Row(
                                      children: [
                                        Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(100.r)),
                                          child: Padding(
                                            padding: EdgeInsets.all(8.r),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "4.7",
                                                  style: TextStyle(
                                                    fontFamily: "SofiaProb",
                                                    fontSize: 11.sp,
                                                    color:
                                                        const Color(0xff000000),
                                                  ),
                                                ),
                                                SizedBox(width: 4.w),
                                                SizedBox(
                                                  height: 15.h,
                                                  width: 15.w,
                                                  child: Icon(
                                                    Icons.star,
                                                    color:
                                                        const Color(0xffFFC529),
                                                    size: 15.sp,
                                                  ),
                                                ),

                                                ///////////

                                                Text(
                                                  "(25+)",
                                                  style: TextStyle(
                                                    fontFamily: "SofiaPror",
                                                    fontSize: 8.sp,
                                                    color:
                                                        const Color(0xff9796A1),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),

                                ///////////

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Salmon Salad",
                                            style: TextStyle(
                                              fontFamily: "SofiaProb",
                                              fontSize: 15.sp,
                                            ),
                                          ),
                                          SizedBox(width: 10.w),
                                        ],
                                      ),

                                      ///////////

                                      Text(
                                        "Baked salmon fish",
                                        style: TextStyle(
                                            fontFamily: "SofiaProR",
                                            fontSize: 12.sp,
                                            color: Color(0xff9796A1)),
                                      ),
                                    ],
                                  ),
                                )
                              ]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
