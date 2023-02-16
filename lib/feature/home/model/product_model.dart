class ProductModel {
  final String image;
  final String brand;
  final String name;
  final String rating;
  final String price;

  const ProductModel({
    required this.image,
    required this.brand,
    required this.name,
    required this.rating,
    required this.price,
  });
}

const products = [
  ProductModel(
    image: "assets/img_cat_dog_bed.png",
    brand: "Frisco",
    name: "Rectangular Bolster Cat & Dog Bed, Brown, Large",
    rating: "4.5",
    price: "\$44.09",
  ),
  ProductModel(
    image: "assets/img_cat_condo.png",
    brand: "Frisco",
    name: "52-in Faux Fur Cat Tree & Condo, Brown",
    rating: "4.5",
    price: "\$50.09",
  ),
  ProductModel(
    image: "assets/img_dog_toy.png",
    brand: "Frisco",
    name: "St. Patrick's Shamrocks Plush Squeaky Dog Toy, 3 count",
    rating: "4.5",
    price: "\$14.09",
  ),
  ProductModel(
    image: "assets/img_dog_bowl.png",
    brand: "Frisco",
    name: "Travel Collapsible Silicone Dog & Cat Bowl, Gray, 3 Cup",
    rating: "4.5",
    price: "\$9s.09",
  ),
];
