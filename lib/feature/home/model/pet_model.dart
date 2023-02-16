class Pet {
  final String image;
  final String name;

  Pet({
    required this.name,
    required this.image,
  });
}

final pets = [
  Pet(name: "Bird", image: "assets/bird_pet.png"),
  Pet(name: "Cat", image: "assets/cat_pet.png"),
  Pet(name: "Dog", image: "assets/dog_pet.png"),
  Pet(name: "Fish", image: "assets/fish_pet.png"),
  Pet(name: "Rabbit", image: "assets/rabbit_pet.png"),
  Pet(name: "Reptile", image: "assets/reptile_pet.png"),
];
