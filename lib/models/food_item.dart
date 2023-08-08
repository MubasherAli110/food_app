class FoodItem {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final String price;
  final String duration;

  FoodItem({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.duration,
  });

  factory FoodItem.fromJson(Map<String, dynamic> json) => FoodItem(
        id: json['id'],
        title: json['title'],
        description: json['description'],
        imageUrl: json['image_url'],
        price: json['price'],
        duration: json['duratio'],
      );
}
