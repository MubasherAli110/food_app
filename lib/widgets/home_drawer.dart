import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 20,
      child: ListView(
        children: [
          Padding(
            padding: REdgeInsets.all(16.0),
            //
            child: Column(
              children: [
                Image.asset(
                  "assets/images/person.png",
                  // height: 90.h,
                  // width: 90.w,
                ),
                Text("Mubasher Ali",
                    style: TextStyle(
                      fontFamily: "SofiaProb",
                      fontSize: 20.sp,
                    )),
                Text(
                  "mubasheralibangash@gmail.com",
                  style: TextStyle(
                    fontFamily: "SofiaProR",
                    fontSize: 14.sp,
                    color: const Color(0xff9EA1B1),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          ListTile(
            leading: const Icon(Icons.space_dashboard_rounded),
            title: Text("My Orders",
                style: TextStyle(
                  fontFamily: "SofiaProR",
                  fontSize: 16.sp,
                )),
            // onTap: () =>
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) =>
            //   ),
            // ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: Text("My Profile",
                style: TextStyle(
                  fontFamily: "SofiaProR",
                  fontSize: 16.sp,
                )),
            // onTap: () => Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) => ,
            //   ),
            // ),
          ),
          ListTile(
            leading: const Icon(Icons.location_on),
            title: Text("Delivery Address",
                style: TextStyle(
                  fontFamily: "SofiaProR",
                  fontSize: 16.sp,
                )),
            // onTap: () => Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) => ,
            //   ),
            // ),
          ),
          ListTile(
            leading: const Icon(Icons.payment),
            title: Text("Payment Methods",
                style: TextStyle(
                  fontFamily: "SofiaProR",
                  fontSize: 16.sp,
                )),
          ),
          ListTile(
            leading: const Icon(Icons.email),
            title: Text("Contact Us",
                style: TextStyle(
                  fontFamily: "SofiaProR",
                  fontSize: 16.sp,
                )),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: Text("Settings",
                style: TextStyle(
                  fontFamily: "SofiaProR",
                  fontSize: 16.sp,
                )),
          ),
          ListTile(
            leading: const Icon(Icons.quiz_sharp),
            title: Text("Helps & FAQs",
                style: TextStyle(
                  fontFamily: "SofiaProR",
                  fontSize: 16.sp,
                )),
          ),
          SizedBox(height: 100.h),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.r),
              color: const Color(0xffFE724C),
            ),
            child: ListTile(
              iconColor: Colors.white,
              leading: const Icon(Icons.power_settings_new_rounded),
              title: Text("Log Out",
                  style: TextStyle(
                      fontFamily: "SofiaProR",
                      fontSize: 16.sp,
                      color: Colors.white)),
            ),
          ),
          SizedBox(height: 100.h),
        ],
      ),
    );
  }
}
