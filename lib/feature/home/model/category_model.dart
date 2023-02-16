class Category {
  final String image;
  final String name;

  Category({
    required this.name,
    required this.image,
  });
}

final categories = [
  Category(name: "Today Deals", image: "assets/today_deals_category.png"),
  Category(name: "Cat Food", image: "assets/cat_food_category.png"),
  Category(name: "Cat Litter", image: "assets/cat_litter_category.png"),
  Category(name: "Cat Toy", image: "assets/cat_toy_category.png"),
  Category(name: "Dog Food", image: "assets/dog_food_category.png"),
  Category(name: "Dog Suplement", image: "assets/dog_suplement_category.png"),
  Category(name: "Dog Toy", image: "assets/dog_toy_category.png"),
];
