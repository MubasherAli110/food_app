import 'food_item.dart';

const item = FoodItem;

class Food {
  final String id;
  final String title;
  final String imageUrl;
  final List<Map<String, dynamic>> item;

  Food({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.item,
  });
  factory Food.fromJson(Map<String, dynamic> json) => Food(
        id: json['id'],
        title: json['title'],
        imageUrl: json['image_url'],
        item: json['items'],
      );
}
