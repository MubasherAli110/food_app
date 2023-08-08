import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/food.dart';

class FoodCard extends StatelessWidget {
  final Food food;

  const FoodCard({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 20,
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  fit: BoxFit.contain,
                  food.imageUrl,
                ),
                Positioned(
                  right: 0,
                  bottom: 20,
                  child: Container(
                    color: Colors.black54,
                    child: Padding(
                      padding: REdgeInsets.all(8.0),
                      child: Text(
                        food.title,
                        // softWrap: true,
                        // maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    const FaIcon(FontAwesomeIcons.clock),
                    Text(' ${food.item} min'),
                  ],
                ),
                const Row(
                  children: [
                    FaIcon(FontAwesomeIcons.bagShopping),
                    Text(' Simple'),
                  ],
                ),
                const Row(
                  children: [
                    FaIcon(FontAwesomeIcons.dollarSign),
                    Text('Affordable'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}
