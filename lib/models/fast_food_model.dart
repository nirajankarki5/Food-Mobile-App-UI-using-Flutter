class FastFood {
  String imageUrl;
  String title;
  int rating;
  double price;
  String shortDesc;
  String description;

  FastFood(
      {this.imageUrl,
      this.description,
      this.price,
      this.rating,
      this.shortDesc,
      this.title});
}

List<FastFood> fastfood = [
  FastFood(
    imageUrl: 'assets/burger.jpg',
    title: 'Cheese Burger',
    rating: 5,
    price: 11.0,
    shortDesc: 'Fresh Patty',
    description:
        'Juicy, mouthwatering, tasty, and everything you’d ever want to savor. A huge single or triple burger with all the fixings, cheese, lettuce, tomato, onions and special sauce or mayonnaise!',
  ),
  FastFood(
    imageUrl: 'assets/momo.jpg',
    title: 'Chicken MOMO',
    rating: 4,
    price: 4.99,
    shortDesc: 'Fresh Fillings',
    description:
        'Dumpling stuffed with assorted flavoured of chicken minced served with tomato chutney.',
  ),
  FastFood(
    imageUrl: 'assets/pizza.jpg',
    title: 'Italian Chicken Pizza',
    rating: 4,
    price: 9.99,
    shortDesc: 'Chrunchy Crust',
    description:
        'Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives and mozzarella.',
  ),
  FastFood(
    imageUrl: 'assets/pasta.jpg',
    title: 'Latina Pasta',
    rating: 4,
    price: 6.99,
    shortDesc: 'Fresh Vegetables',
    description:
        'Best quality pasta made with hand made dough mixed with top quality spices and fresh vegetables.',
  ),
];
