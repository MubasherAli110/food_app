import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10,
      child: ListView(
        children: [
          Padding(
            padding: REdgeInsets.all(16.0),
            child: Text(
              'BSI NSSD',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 14.sp,
              ),
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          const ListTile(
            leading: Text('Main'),
          ),
          const ListTile(
            leading: Icon(Icons.category),
            title: Text("Categories"),
            // onTap: () =>
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) =>
            //   ),
            // ),
          ),
          const ListTile(
            leading: Icon(Icons.person),
            title: Text("Authors"),
            // onTap: () => Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) => ,
            //   ),
            // ),
          ),
          const ListTile(
            leading: Icon(Icons.home_outlined),
            title: Text("Publishers"),
            // onTap: () => Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) => ,
            //   ),
            // ),
          ),
          const ListTile(
            leading: Icon(Icons.book),
            title: Text("Books Library"),
          ),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text("Book Settings"),
          ),
          const ListTile(
            leading: Icon(Icons.date_range),
            title: Text("Your Cart"),
          ),
          const ListTile(
            leading: Icon(Icons.date_range),
            title: Text("Cart Checkout"),
          ),
        ],
      ),
    );
  }
}
