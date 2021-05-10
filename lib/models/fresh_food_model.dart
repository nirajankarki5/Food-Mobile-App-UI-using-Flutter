class FreshFood {
  String imageUrl;
  String title;
  int rating;
  double price;
  String shortDesc;
  String description;

  FreshFood(
      {this.imageUrl,
      this.description,
      this.price,
      this.rating,
      this.shortDesc,
      this.title});
}

List<FreshFood> freshfood = [
  FreshFood(
    imageUrl: 'assets/salad.jpg',
    title: 'Mixed Salad',
    rating: 5,
    price: 2.99,
    shortDesc: 'Fresh Vegetables',
    description:
        'A garden salad consisting of lettuce, cucumber, scallions, cherry tomatoes, olives, sun-dried tomatoes, and feta. Main ingredients. Pieces of vegetables, fruits, meat, eggs, or grains mixed with a sauce.',
  ),
  FreshFood(
    imageUrl: 'assets/sandwich.jpg',
    title: 'Sandwich',
    rating: 4,
    price: 2.59,
    shortDesc: 'Fresh Bread',
    description:
        'Typically consisting of vegetables, sliced cheese or meat, placed on or between slices of bread, or more generally any dish wherein bread serves as a container or wrapper for another food type.',
  ),
  FreshFood(
    imageUrl: 'assets/vegetables.jpg',
    title: 'Mixed Vegetables',
    rating: 4,
    price: 3.49,
    shortDesc: 'Healthy Vegetables',
    description: 'Fresh vegetables grown locally. Cooked in low carb oil',
  ),
];
