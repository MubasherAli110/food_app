import 'package:flutter/material.dart';
import 'package:food_app/widgets/home_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        drawer: HomeDrawer(),
        body: Column(children: [
          Text("data")
          // Row(
          //   children: [
          //     IconButton(
          //         color: Colors.black,
          //         onPressed: () {},
          //         icon: const Icon(Icons.menu_sharp)),
          //   ],
          // )
        ]),
      ),
    );
  }
}
