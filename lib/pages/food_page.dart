import 'package:flutter/material.dart';

import '../models/food.dart';
import '../widgets/card.dart';

class FoodPage extends StatelessWidget {
  final List<Food> filteredFoodList;
  const FoodPage({super.key, required this.filteredFoodList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.grey,
      body: ListView.builder(
          itemCount: filteredFoodList.length,
          itemBuilder: (context, index) =>
              FoodCard(food: filteredFoodList[index])
          // Card(
          //   recipe: filteredRecipesList[index],
          // ),
          ),
    );
  }
}
